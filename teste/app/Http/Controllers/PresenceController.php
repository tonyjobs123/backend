<?php

namespace App\Http\Controllers;

use App\Personnel;
use App\Presence;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PresenceController extends Controller
{
    public function index()
    {

    $presences=DB::select("select distinct SUM(presences.duree/60) as nb,personnels.NomPers,personnels.PrenomPers from presences join personnels  on personnels.id=presences.personnel_id WHERE presences.DateArrive LIKE '".date('Y-m')."%' and presences.DateDepart is not null GROUP by personnels.NomPers,personnels.PrenomPers");
    return response(array(
       'presences'=>$presences
    ));


    }

    public function edit()
    {

    }
    public function show($id)
    {
        $user=User::find($id);
        if ($user!=null)
        {
            $p=Presence::where('DateArrive','like',date('Y-m-d').'%')->where('personnel_id',$user->personnel_id)->first();
            return response(array(
                'presence'=>$p
            ));
        }

    }

    public function store(Request $request)
    {
        $p=new Presence;
        $p->DateArrive=Carbon::now();
        $p->personnel_id=$request->iduser;
        $p->save();
        return response(array(
            'idpresence'=> $p->id
        ));
    }
    public function update(Request $request,$id)
    {
        $p=Presence::find($id);
        if($p!=null)
        {
            $date=Carbon::now();
            $start=new Carbon($p->DateArrive);
            $d=$start->diffInMinutes($date);
            $p->DateDepart=$date;
            $p->duree=$d;
            $p->save();
            return response(array(
                'idpresence'=> $p->id
            ));
        }

    }
}
