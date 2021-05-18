<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    //
    public  function  index(Book $book){
        $book =$book->paginate(10);
       // var_dump($book);die();
        //return $this->view(null,compact('book'));

        return view('book.index', compact('book'));
    }
}
