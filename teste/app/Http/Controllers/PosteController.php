<?php

namespace App\Http\Controllers;

use App\Historique;
use App\Poste;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class PosteController extends Controller
{
    private $objet="postes";
    public function index()
    {
        $postes=Poste::all();
        return Response::json(array(
           'postes'=>$postes
        ));
    }

    public function store(Request $request)
    {
    $poste=new Poste;
    $poste->LibellePostes=$request->libelle;
    $poste->save();
    $h= new Historique;
    $h->enreg($this->objet,"creation",$request->iduser);
     return Response::json(array(
           'poste'=>$poste
        ));
    }
    public function update($id,Request $request)
    {
        $poste=Poste::findOrFail($id);

        if($poste!=null)
        {
            $poste->LibellePostes=$request->libelle;
            $poste->save();
            $h= new Historique;
            $h->enreg($this->objet,"modificaion",$request->iduser);
        }
          return Response::json(array(
           'poste'=>$poste
        ));

    }
    public function destroy($id)
    {
        $poste=Poste::findOrFail($id);
        if($poste!=null)
        {
            $poste->delete();

        }

    }
    public function show($id){
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);
    }
}
