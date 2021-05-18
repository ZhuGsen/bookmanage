<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class lanageController extends Controller
{
    public function setLanger(Request $request){

        $data = $request->all();
        session()->put('language',$data['language']);
        App::setLocale(session('language'));
        session()->put('language',$data['language']);
        $_SESSION['language'] =$data['language'];
        $array=array(array("success"=>''.$_SESSION['language'].''));

        App()->setLocale(session('language'));
        return redirect('/');
    }

}
