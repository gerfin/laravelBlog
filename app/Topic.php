<?php

namespace App;

use App\Model;

class Topic extends Model
{
    public function posts()
    {
        //属于这个专题的所有文章
       return $this->belongsToMany(\App\Post::class,'post_topics','topic_id','post_id');
    }

    //专题的文章数,用于withCount
    public function postTopics()
    {
        return $this->hasMany(\App\PostTopic::class,'topic_id');
    }
}
