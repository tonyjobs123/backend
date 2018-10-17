<?php

namespace App\Http\Controllers;

use App\Historique;
use App\Personnel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class PersonnelController extends Controller
{
    private $objet="personnels";
    public function index()
    {
        $perso=Personnel::with('poste')->get();
        return Response::json(array(
           'perso'=>$perso
        ));

    }

    public function store(Request $request)
    {
        $perso=new Personnel;
        $perso->NomPers=$request->nom;
        $perso->PrenomPers=$request->prenom;
        $perso->SexePers=$request->sexe;
        $perso->TelephonePers=$request->tel;
        $perso->AdressePers=$request->adresse;
        $perso->EmailPers=$request->email;
        $perso->poste_id=$request->poste;
        $perso->save();
        $h= new Historique;
        $h->enreg($this->objet,"creation",$request->iduser);
          return Response::json(array(
           'perso'=>Personnel::with('poste')->find($perso->id)
        ));

    }
    public function update($id,Request $request)
    {
        $perso=Personnel::findOrfail($id);

        if($perso!=null)
        {
            $perso->NomPers=$request->nom;
            $perso->PrenomPers=$request->prenom;
            $perso->SexePers=$request->sexe;
            $perso->TelephonePers=$request->tel;
            $perso->AdressePers=$request->adresse;
            $perso->EmailPers=$request->email;
            $perso->poste_id=$request->poste;
            $perso->save();
            $h= new Historique;
            $h->enreg($this->objet,"modification",$request->iduser);

            return Response::json(array(
                'perso'=>Personnel::with('poste')->find($perso->id)
            ));
        }

    }
    public function destroy($id,Request $request)
    {
        $perso=Personnel::findOrfail($id);
        if($perso!=null)
        {
            $perso->delete();
        }
    }
    public function show($id){
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);
    }
}
