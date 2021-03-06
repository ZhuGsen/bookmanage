<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = ['id','title', 'name', 'edition','category_id','created_at','updated_at'];

    //ε³θεΊε
    public function category()
    {
        //return $this->hasOne('App\Model\Category','id','category_id');
        return $this->hasOne('App\Category','id','category_id');
    }


}
