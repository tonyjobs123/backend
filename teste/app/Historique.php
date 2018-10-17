<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Historique extends Model
{
    use SoftDeletes;
    public function user()
    {
        return $this->belongsTo(User::class);
    }


    public function enreg($objet,$action,$id){
        $h=new Historique;
        $h->ActionHisto=$action;
        $h->user_id=$id;
        $h->DateHisto=date('Y-m-d H:i:s');
        $h->ObjetHisto=$objet;
        $h->save();

    }
}
