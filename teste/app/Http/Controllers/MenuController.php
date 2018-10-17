<?php

namespace App\Http\Controllers;

use App\Historique;
use App\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;

class MenuController extends Controller
{
    private $objet="menus";
    public function index()
    {

        $menus=Menu::with('typemenu')->get();
        return Response::json(array(
            'menus'=>$menus
        ));
    }

    public function store(Request $request)
    {
        $menu=new Menu;
        $menu->NomMenu=$request->nom;
        $menu->UrlMenu=$request->url;
        $menu->IconMenu=$request->icon;
        $menu->typemenu_id=$request->type;
        $menu->save();
        $h= new Historique;
        $h->enreg($this->objet,"creation",$request->iduser);
         return Response::json(array(
            'menu'=>Menu::with('typemenu')->find($menu->id)
        ));
    }
    public function show($id)
    {
        $h= new Historique;
        $h->enreg($this->objet,"suppression",$id);

    }
    public function update($id,Request $request)
    {
                $menu=Menu::findOrfail($id);
                $menu->NomMenu=$request->nom;
                $menu->UrlMenu=$request->url;
                $menu->IconMenu=$request->icon;
                $menu->typemenu_id=$request->type;
                $menu->save();
            $h= new Historique;
            $h->enreg($this->objet,"modification",$request->iduser);
         return Response::json(array(
             'menu'=>Menu::with('typemenu')->find($menu->id)
        ));

    }
    public function destroy($id)
    {
        $menu=Menu::findOrfail($id);
        if($menu!=null)
        {

            $menu->delete();
        }

    }
}
