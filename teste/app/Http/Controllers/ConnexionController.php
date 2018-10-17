<?php

namespace App\Http\Controllers;

use App\Connexion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class ConnexionController extends Controller
{
    public function index()
    {
        $c=DB::table('connexions')->join('users','users.id','connexions.user_id')->join('personnels','personnels.id','users.personnel_id')->orderBy('DebutCon', 'desc')->get();
        return Response::json(array(
            'connexions'=>$c
        ));

    }

    public function store()
    {

    }
    public function update($id)
    {

    }
    public function destroy($id)
    {

    }
}
