<?php

namespace App\Http\Controllers;

use App\Historique;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Response;

class UserController extends Controller
{
    private $objet="users";
     public function index()
    {
        $users=User::with(['personnel','profil'])->get();
        return Response::json(array(
           'users'=>$users
        ));
    }

    public function store(Request $request)
    {
        $user=new User;
        $user->name=$request->nom;
        $user->password= hash::make($request->password);
        $user->personnel_id=$request->personnel;
        $user->profil_id=$request->profil;
        $user->etat=$request->etat;
        $user->save();
        $h= new Historique;
        $h->enreg($this->objet,"creation",$request->iduser);
          return Response::json(array(
           'user'=>User::with(['personnel','profil'])->find($user->id)
        ));

    }
    public function update($id,Request $request)
    {
        $user=User::findOrfail($id);
        if($user!=null)
        {
            if($request->password!=null)
            {
                $user->password= hash::make($request->password);
            }
        $user->name=$request->nom;
        $user->personnel_id=$request->personnel;
        $user->profil_id=$request->profil;
        $user->etat=$request->etat;
        $user->save();
            $h= new Historique;
            $h->enreg($this->objet,"modification",$request->iduser);
          return Response::json(array(
           'user'=>User::with(['personnel','profil'])->find($user->id)
        ));
        }
    }
    public function destroy($id)
    {
       $user=User::findOrfail($id);
        if($user!=null)
        {
           $user->delete();
        }
    }
    public function show($id){
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);
    }
    public function profil()
    {
        $id=Auth::user()->id;
        $profil=User::with('personnel')->findOrFail($id);

        if($profil!=null)
        {
            return Response::json(array(
                'profil'=>$profil
            ));
        }
    }
    public function updateprofil(Request $request)
    {
        $id=Auth::user()->id;
        $user=User::find($id);
        if($user!=null)
        {
            if($request->username !=null && $request->password!=null)
            {
                $user->name=$request->username;
                $user->password=Hash::make($request->password);
                $user->save();
                return Response::json(array(
                    'user'=>$user
                ));
            }
            else if($request->username !=null && $request->password==null)
            {
                $user->name=$request->username;
                $user->save();
                return Response::json(array(
                    'user'=>$user
                ));
            }
            else if($request->username==null && $request->password!=null)
            {
                $user->password=Hash::make($request->password);
                $user->save();
                return Response::json(array(
                    'user'=>$user
                ));
            }
        }

    }
}
