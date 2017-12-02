<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//用户模块
//注册页面
Route::get('/register','\App\Http\Controllers\RegisterController@index');
//注册行为
Route::post('/register','\App\Http\Controllers\RegisterController@register');
//登陆页面
Route::get('/login','\App\Http\Controllers\LoginController@index');
//登陆行为
Route::post('/login','\App\Http\Controllers\LoginController@login');
//登出行为
Route::get('/logout','\App\Http\Controllers\LoginController@logout');
//个人设置页面
Route::get('/users/me/setting','\App\Http\Controllers\UserController@setting');
//个人设置操作
Route::post('/users/me/setting','\App\Http\Controllers\UserController@settingStore');
Route::get('/', function () {
    return view('welcome');
});
//文章搜索页
Route::get('/posts/search', '\App\Http\Controllers\PostController@search');
//文章列表页
Route::get('/posts','\App\Http\Controllers\PostController@index');
//文章详情页
Route::get('/posts/create','\App\Http\Controllers\PostController@create');
Route::get('/posts/{post}','\App\Http\Controllers\PostController@show');
//创建文章

Route::post('/posts','\App\Http\Controllers\PostController@store');
//编辑文章
Route::get('/posts/{post}/edit','\App\Http\Controllers\PostController@edit');
Route::put('/posts/{post}','\App\Http\Controllers\PostController@update');
//删除文章
Route::get('/posts/{post}/delete','\App\Http\Controllers\PostController@delete');
//图片上传
Route::post('/posts/image/upload','\App\Http\Controllers\PostController@imageUpload');
//提交评论
Route::post('/posts/{post}/comment','\App\Http\Controllers\PostController@comment');
Route::get('/posts/{post}/zan', '\App\Http\Controllers\PostController@zan');
Route::get('/posts/{post}/unzan', '\App\Http\Controllers\PostController@unzan');

//个人中心
Route::get('/user/{user}','\App\Http\Controllers\UserController@show');
Route::get('/user/{user}/fan','\App\Http\Controllers\UserController@fan');
Route::get('/user/{user}/unfan','\App\Http\Controllers\UserController@unfan');

//专题详情页
Route::get('/topic/{topic}','\App\Http\Controllers\TopicController@show');
Route::post('/topic/{topic}/submit','\App\Http\Controllers\TopicController@submit');
include_once ("admin.php");