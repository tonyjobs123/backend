<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Personnel extends Model
{
    use SoftDeletes;

    public function user()
    {
        return $this->hasMany(User::class);
    }
    public function poste()
    {
        return $this->belongsTo(Poste::class);
    }



}
