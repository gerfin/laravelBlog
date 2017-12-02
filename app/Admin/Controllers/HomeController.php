<?php
/**
 * Created by PhpStorm.
 * User: gf2007
 * Date: 2017/11/28 0028
 * Time: 19:33
 */

namespace App\Admin\Controllers;


class HomeController extends Controller
{
    public function index()
    {
        return view("admin.home.index");
    }
}