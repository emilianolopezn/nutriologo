<?php

use Illuminate\Http\Request;

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
//api
Route::get('/dieta/{fecha}/{paciente}','DietaApiController@dieta')
    ->name('api.dietas.dieta');

Route::post('evidencia/{dieta}/{dia_semana}/{tiempo_alimentacion}',
    'DietaApiController@nueva_evidencia')
    ->name('api.dietas.evidencias.store');

