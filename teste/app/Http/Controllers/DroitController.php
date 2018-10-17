<?php

namespace App\Http\Controllers;

use App\Menu;
use App\Profil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class DroitController extends Controller
{
    public function show($id)
    {
        $profils=Profil::find($id);
        return Response::json( array(
            'profils'=>$profils->menu
        ));

    }

    public function store(Request $request)
    {
        $s=$request->s;
        $c=$request->c;
        $m=$request->m;
        $d=$request->d;
        $menu=Menu::all();
        $droit=Profil::find($request->profil);
        {
            if($droit!=null)
            {
                for($i=0; $i<Menu::count();$i++)
                {
                    if($s[$i]==true)
                    {
                        $droit->menu()->attach($menu[$i]->id,['autorisation'=>'s']);
                    }
                    if($c[$i]==true)
                    {
                        $droit->menu()->attach($menu[$i]->id,['autorisation'=>'c']);
                    }
                    if($m[$i]==true)
                    {
                        $droit->menu()->attach($menu[$i]->id,['autorisation'=>'m']);
                    }
                    if($d[$i]==true)
                    {
                        $droit->menu()->attach($menu[$i]->id,['autorisation'=>'d']);
                    }


                }

                return Response::json(array(
                   'droit'=>$droit->menu
                ));

            }
        }

    }
    public function update($id,Request $request)
    {

        $droit=Profil::find($id);
        {
            if($droit!=null)
            {
                for($i=0; $i<Menu::count();$i++)
                {
                    $droit->menu()->detach($request->menu);

                }


            }
        }

    }


    public function edit($id)
    {
        $droits=DB::select("select * from menu_profil JOIN menus on menu_profil.menu_id=menus.id JOIN profils ON menu_profil.profil_id=profils.id WHERE profils.id=".$id);
        return Response::json(array(
        'droits'=>$droits
));
    }

    public function destroy($id)
    {


    }
}
