<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Profil extends Model
{
    use SoftDeletes;

    public  function Menu(){
        return $this->belongsToMany(Menu::class)->withPivot('autorisation')->withTimestamps();
    }

    public function user()
    {
        return $this->hasMany(User::class);
    }
}
