<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

/*Catálogos*/
Route::resource('departamento',App\Http\Controllers\TcDepartamentoController::class)->only(['index','store','show','edit','update','destroy','cargarZona']);
Route::resource('facilitador',App\Http\Controllers\TcFacilitadorController::class)->only(['index','store','show','edit','update','destroy']);
Route::resource('modalidad',App\Http\Controllers\TcModalidadController::class)->only(['index','store','show','edit','update','destroy']);
Route::resource('municipio',App\Http\Controllers\TcMunicipioController::class)->only(['index','store','show','edit','update','destroy','cargarDepartamento']);
Route::resource('programa',App\Http\Controllers\TcProgramaController::class)->only(['index','store','show','edit','update','destroy']);
Route::resource('tipoCosto',App\Http\Controllers\TcTipoCostoController::class)->only(['index','store','show','edit','update','destroy']);
Route::resource('zona',App\Http\Controllers\TcZonaController::class)->only(['index','store','show','edit','update','destroy']);
/*Maestros*/
Route::resource('evento',App\Http\Controllers\TmEventoController::class)->only(['index','store','show','edit','update','destroy','cargarDepartamento','cargarMunicipio','cargarFacilitador','cargarModalidad','cargarPrograma','cargarTipoCosto','cargarZona','cargarHorario']);
Route::resource('horario',App\Http\Controllers\TmHorarioController::class)->only(['index','store','show','edit','update','destroy']);