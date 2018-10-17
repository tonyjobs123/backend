<?php

namespace App\Http\Controllers;

use App\Historique;
use App\Profil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;


class ProfilController extends Controller
{
    private $objet="profils";
    public function index()
    {
        $profils=Profil::all();
        return Response::json(array(
            'profils'=>$profils
        ));

    }

    public function store(Request $request)
    {
        $profil=new Profil;
        $profil->LibelleProfil=$request->libelle;
        $profil->DescProfil=$request->description;
        $profil->EtatProfil=$request->etat;
        $profil->save();
        $h= new Historique;
        $h->enreg($this->objet,"creation",$request->iduser);
        return Response::json(array(
            'profil'=>$profil
        ));
    }
    public function update($id,Request $request)
    {
        $profil=Profil::findOrfail($id);
        if($profil!=null)
        {
            $profil->LibelleProfil=$request->libelle;
            $profil->DescProfil=$request->description;
             $profil->EtatProfil=$request->etat;
            $profil->save();
            $h= new Historique;
            $h->enreg($this->objet,"modification",$request->iduser);
            return Response::json(array(
            'profil'=>$profil
        ));
        }

    }
    public function destroy($id,Request $request)
    {
        $profil=Profil::findOrfail($id);
        if($profil!=null)
        {
            $profil->delete();
        }

    }
    public function show($id){
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);
    }
}
