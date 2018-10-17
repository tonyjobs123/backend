<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Menu extends Model
{
    use SoftDeletes;
    public  function profil(){
        return $this->belongsToMany(Profil::class)->withPivot('autorisation')->withTimestamps();
    }
    public function typemenu()
    {
        return $this->belongsTo(Typemenu::class);
    }
}
