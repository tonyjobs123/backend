<?php

namespace App\Http\Controllers;

use App\Historique;
use App\Typemenu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;

class TypemenuController extends Controller
{
    private $objet="typemenus";

    public function index()
    {
        $types=Typemenu::all();
        return Response::json(array(
            'types'=>$types
        ));

    }

    public function store(Request $request)
    {
        $type=new Typemenu;
        $type->LibelleTypemenu=$request->libelle;
        $type->save();
        $h= new Historique;
        $h->enreg($this->objet,"creation",$request->iduser);
        return Response::json(array(
            'type'=>$type
        ));
    }
    public function update($id,Request $request)
    {
        $type=Typemenu::findOrfail($id);
        if($type!=null)
        {
            $type->LibelleTypemenu=$request->libelle;
            $type->save();
            $h= new Historique;
            $h->enreg($this->objet,"modification",$request->iduser);
            return Response::json(array(
                'type'=>$type
            ));
        }

    }
    public function destroy($id)
    {
        $type=Typemenu::findOrfail($id);
        if($type!=null)
        {
            $type->delete();
        }

    }
    public function show($id)
    {
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);
    }
}
