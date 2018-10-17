<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('postes','PosteController');
Route::resource('personnels','PersonnelController');
Route::resource('menus','MenuController');
Route::resource('profils','ProfilController');
Route::resource('users','UserController');
Route::resource('droits','DroitController');
Route::post('login','LogController@postLogin');
Route::get('logout/{id}','LogController@logout');
Route::get('connexion','ConnexionController@index');
Route::resource('typemenus','TypemenuController');
Route::resource('presences','PresenceController');
Route::get('nmb', function () {
    return Response::json(array(
       'nbr'=>\App\Menu::count()
    ));
});

Route::get('nbr', function () {
    return Response::json(array(
        'nbr'=>\App\Dure::count()
    ));
});
//recuperer les profil active
Route::get('profil', function () {
    return Response::json(array(
        'profils'=>\App\Profil::where('EtatProfil','=',1)->get()
    ));
});

// recuperer les menus de l'utilisateur
Route::get('getmenu/{id}',function($id){
    $info=DB::select("SELECT  DISTINCT menu_profil.menu_id,menus.NomMenu,menus.UrlMenu,menus.IconMenu,typemenus.id from users join profils on profils.id=users.profil_id join menu_profil on profils.id=menu_profil.profil_id join menus on menus.id=menu_profil.menu_id join typemenus on menus.typemenu_id=typemenus.id WHERE users.id=".$id." and profils.EtatProfil=1");
    return Response::json(array(
       'menus'=>$info
    ));
});

//recuperer les droits sur un menu
Route::get('getdroit/{id}/{menu}',function($id,$menu){

    $aut=DB::select("select autorisation from menu_profil JOIN profils on menu_profil.profil_id=profils.id join users on profils.id=users.profil_id join menus on menus.id=menu_profil.menu_id WHERE users.id=".$id." AND menus.UrlMenu='$menu' and profils.EtatProfil=1");
     return Response::json(array(
         'aut'=>$aut
     ));
});


