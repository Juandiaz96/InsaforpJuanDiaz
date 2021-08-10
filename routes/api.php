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

Route::resource('zona',App\Http\Controllers\ZonaController::class)->only(['index','store','show','update','destroy']);
Route::resource('departamento',App\Http\Controllers\DepartamentoController::class)->only(['index','store','show','update','destroy','cargarZona']);
Route::resource('municipio',App\Http\Controllers\MunicipioController::class)->only(['index','store','show','update','destroy','cargarDepartamento']);
Route::resource('facilitador',App\Http\Controllers\FacilitadorController::class)->only(['index','store','show','update','destroy']);
Route::resource('modalidad',App\Http\Controllers\ModalidadController::class)->only(['index','store','show','update','destroy']);
Route::resource('programa',App\Http\Controllers\ProgramaController::class)->only(['index','store','show','update','destroy']);
Route::resource('tipoCosto',App\Http\Controllers\TipoCostoController::class)->only(['index','store','show','update','destroy']);
Route::resource('evento',App\Http\Controllers\EventoController::class)->only(['index','store','show','update','destroy','cargarDepartamento','cargarMunicipio','cargarFacilitador','cargarModalidad','cargarPrograma','cargarTipoCosto','cargarZona','cargarHorario']);
Route::resource('horario',App\Http\Controllers\HorarioController::class)->only(['index','store','show','update','destroy']);