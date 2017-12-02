<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Topic;

class TopicController extends Controller
{
    public function show(Topic $topic)
    {
        //带文章数的专题
        $topic = Topic::withCount('postTopics')->find($topic->id);
        //专题的文章列表，按照创建时间的倒序排列，前十个
        $posts = $topic->posts()->orderBy('created_at','desc')->take(10)->get();
       // $posts = $topic->posts()->orderBy('created_at', 'desc')->with(['user'])->take(10)->get();
        //属于我的文章，但是未投稿
        $myposts = \App\Post::authorBy(\Auth::id())->topicNotBy($topic->id)->get();
       return view("topic/show",compact('topic','posts','myposts'));
}

    public function submit(Topic $topic)
    {
        $this->validate(\request(),[
            'post_ids' => 'required|array',
        ]);

        $post_ids = \request('post_ids');
        $topic_id = $topic->id;
        foreach ($post_ids as $post_id)
        {
            \App\PostTopic::firstOrCreate(compact('topic_id','post_id'));

        }
        return back();
    }
}
