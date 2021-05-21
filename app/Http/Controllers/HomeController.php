<?php

namespace App\Http\Controllers;

use App\Model\Menu;
use App\Model\View;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        App::setLocale(session('language'));
        $date = Carbon::now()->toDateString();
        $viewsCount = View::whereDate('created_at',$date)->count();
        return view('index',['viewsCount'=>$viewsCount],compact('book'));
    }

    public function admin()
    {
        $menus = Auth::user()->getMenus();
//        dump($menus);die;
        return view('home',compact('menus'));
    }

    public function noPermission()
    {
        return view('403');
    }
}
