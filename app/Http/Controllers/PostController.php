<?php

namespace App\Http\Controllers;
use \App\Comment;
use \App\Post;
use \App\Zan;
use Illuminate\Http\Request;
use Laravel\Scout\Searchable;

class PostController extends Controller
{
    use Searchable;

    //定义索引里面的type
    public function  searchableAs()
    {
        return "post";
    }

    //定义有那些字段需要搜索
    public function toSearchableArray()
    {
        return [
            'title' => $this->title,
            'content' => $this->content,
        ];
    }

    //列表
    public function index()
    {
        $posts = Post::orderBy('created_at','desc')->withCount(['comments','zans'])->paginate(6);
        return view("post/index",compact('posts'));
    }

    //详情
    public function show(Post $post)
    {
        $post->load('comments');
        return view("post/show",compact('post'));
    }

    //创建
    public function create()
    {
        return view("post/create");
    }

    //创建逻辑
    public function store()
    {
       // $params = ['title'=>request('title'),'content'=>\request('content')];
        //$params =\request(['title','content']);
        $this->validate(\request(),[
            'title' => 'required|string|max:100|min:5',
            'content' => 'required|string|min:10',
        ]);

        $user_id = \Auth::id();
        //dd($user_id);
        $params = array_merge(request(['title','content']), ['user_id' => \Auth::id()]);
        Post::create($params);
        return redirect("/posts");
        //dd($post);
    }

    //编辑页面
    public function edit(Post $post)
    {
        return view("post/edit",compact('post'));
    }

    //编辑逻辑
    public function update(Post $post)
    {
        $this->validate(\request(),[
            'title' => 'required|string|max:100|min:5',
            'content' => 'required|string|min:10',
        ]);

        $this->authorize('update',$post);
        $post->title = \request('title');
        $post->content = \request('content');
        $post->save();

        return redirect("/posts/{$post->id}");
    }

    //删除逻辑
    public function delete(Post $post)
    {
        $this->authorize('delete',$post);
        $post->delete();
        return redirect("/posts");
    }

    //上传图片
    public function imageUpload(Request $request)
    {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(time()));
        return asset('storage/'.$path);

    }

    //提交评论
    public function comment(Post $post)
    {
        $this->validate(\request(), [
            'content'=>'required|min:3'
        ]);

        $comment = new Comment();
        $comment->user_id = \Auth::id();
        $comment->content = \request('content');
        $post->comments()->save($comment);

        return back();
    }

    //赞
    public function zan(Post $post)
    {
        $param = [

            'user_id' => \Auth::id(),
            'post_id' => $post->id,
        ];
        Zan::firstOrCreate($param);
        return back();
    }

    //取消赞
    public function unzan(Post $post)
    {
        $post->zan(\Auth::id())->delete();
        return back();
    }

    //搜索结果页
    public function search()
    {
        $this->validate(\request(),[
            'query'=>'required'
        ]);
        $query = \request('query');
        $posts = \App\Post::search($query)->paginate(2);
        return view("post/search",compact('posts','query'));
    }
}
