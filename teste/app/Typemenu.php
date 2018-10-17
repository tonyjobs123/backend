<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Typemenu extends Model
{
    use SoftDeletes;
    public function menu()
    {
        return $this->hasMany(Menu::class);
    }
}
