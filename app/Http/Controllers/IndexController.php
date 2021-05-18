<?php

namespace App\Http\Controllers;

use App\Book;
use App\Category;
use App\Model\View;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    //
    public function index(Request $request){
        $search = [];
        if (isset($request->all()['keyword']) && $request->all()['keyword'] != 0) {
            $search['title'] = $request->all()['keyword'];
            if (!Auth::user()) {
                return redirect('/login');
            }
        }
        App::setLocale(session('language'));
        $date = Carbon::now()->toDateString();
        $viewsCount = View::whereDate('created_at',$date)->count();
        $category =Book::with('category')->where($search)->paginate(10);
      //  var_dump($category);die();
        return view('index.index',['viewsCount'=>$viewsCount],compact('category'));
    }
}
