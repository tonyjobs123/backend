<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Poste extends Model
{
    use SoftDeletes;

    public function personnel()
    {
        return $this->hasMany(Personnel::class);
    }
}
