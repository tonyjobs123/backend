<?php

namespace App\Http\Controllers;

use App\Historique;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class HistoriqueController extends Controller
{
    public function index()
    {
        $h=DB::table('historiques')->join('users','users.id','historiques.user_id')->join('personnels','personnels.id','users.personnel_id')->orderBy('DateHisto', 'desc')->get();

        return Response::json(array(
            'historiques'=>$h
        )
        );

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
