<?php

namespace App\Http\Controllers;

use App\Book;
use App\Category;
use Illuminate\Http\Request;
use App\Http\Requests\BookCreateRequest;
class BookController extends Controller
{
    protected $fields = [
        'title' => '',
    ];
    //
    public  function  index(Book $book,BookCreateRequest $request){
        $keyword = $request->input('keyword','');
        $book =Book::with('category')->paginate(10);
        $categories=Category::all();
        $fields = $this->fields;
        return view('book.index',['categories' => $categories,'fields'=>$fields,'book'=>$book]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    /**
     * @param AdminUserCreateRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(BookCreateRequest $request,Book $book)
    {
        $book->fill($request->all());
        $book = $book->save();
        if ($book) {
            return back()->with('success', '创建菜单成功');
        } else {
            return back()->withErrors(['创建菜单失败']);
        }

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $book =Book::with('category')->where('id',"=",$id)->first();
        $categories=Category::all();
        //
    }

}
