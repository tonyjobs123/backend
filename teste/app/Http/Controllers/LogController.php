<?php

namespace App\Http\Controllers;

use App\Connexion;
use App\Personnel;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;

class LogController extends Controller
{
    public function getLogin()
    {
       return view('login');
    }

    public function postLogin(Request $reqquest)
    {
        $user=array('name'=>$reqquest->nom,'password'=>$reqquest->password,'etat'=>true);
        if( Auth::attempt($user))
        {
            $id=Auth::user()->id;
            $name=Auth::user()->name;
            $c=new Connexion;
            $c->user_id=$id;
            $c->DebutCon=date('Y-m-d H:i:s');
            $c->save();
            $p=Personnel::find($id);
        //$info=DB::select('SELECT * from users join profils on profils.id=users.profil_id join menu_profil on profils.id=menu_profil.profil_id join menus on menus.id=menu_profil.menu_id WHERE users.id='.$id)->get();

            return Response::json(array(
                'id'=>$id,
                'nom'=>$name,
                'nomper'=>$p->NomPers,
                'prenomper'=>$p->PrenomPers,
                'idCon'=>$c->id
            ));
        }
        else
        {
            return Response::json(array(
                'erreur'=>'erreur'
            ));
        }
    }

    public function logout($id)
    {
    Auth::Logout();
        $c=Connexion::find($id);
        $c->FinCon=date('Y-m-d H:i:s');
        $c->save();

        return Response::json(array(
            'decon'=>'deconnexion'
        ));
    }
}
