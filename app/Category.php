<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['id','title', 'name', 'hostory','created_at','updated_at'];
}
