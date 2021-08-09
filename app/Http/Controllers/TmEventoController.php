<?php

namespace App\Http\Controllers;

use App\Models\tm_evento;
use Illuminate\Http\Request;

class TmEventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $evento = tmEvento::all([]);
        return response()->json($evento);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $evento = tmEvento::create($request->post());
        return response()->json([
            'message'=>'Evento Almacenado con Éxito',
            'evento'=>$evento
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tm_evento  $tm_evento
     * @return \Illuminate\Http\Response
     */
    public function show(tm_evento $tm_evento)
    {
        return response()->json($tm_evento);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tm_evento  $tm_evento
     * @return \Illuminate\Http\Response
     */
    public function edit(tm_evento $tm_evento)
    {
        $tm_evento->fill($request->post()->save());
        return response()->json([
            'message'=>'Evento Editado con Éxito',
            'evento'=>$tm_evento
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tm_evento  $tm_evento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tm_evento $tm_evento)
    {
        $tm_evento->fill($request->post()->save());
        return response()->json([
            'message'=>'Evento Actualizado con Éxito',
            'evento'=>$tm_evento
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tm_evento  $tm_evento
     * @return \Illuminate\Http\Response
     */
    public function destroy(tm_evento $tm_evento)
    {
        $tm_evento->delete();
        return response()->json([
            'message'=>'Evento Eliminado con Éxito'
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarDepartamento() {
        $departamento = tcDepartamento::all(['id','nombre','ISOcode']);
        return response()->json([
            'departamento'=>$departamento
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarMunicipio() {
        $municipio = tcMunicipio::all(['id','nombre','departamento_id']);
        return response()->json([
            'municipio'=>$municipio
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarFacilitador() {
        $facilitador = tcFacilitador::all(['id','nombre','apellido']);
        return response()->json([
            'facilitador'=>$facilitador
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarModalidad() {
        $modalidad = tcModalidad::all(['id','nombre']);
        return response()->json([
            'modalidad'=>$modalidad
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarPrograma() {
        $programa = tcPrograma::all(['id','nombre']);
        return response()->json([
            'programa'=>$programa
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarTipoCosto() {
        $tipoCosto = tcTipoCosto::all(['id','nombre']);
        return response()->json([
            'tipoCosto'=>$tipoCosto
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarZona() {
        $zona = tcZona::all(['id','nombre']);
        return response()->json([
            'zona'=>$zona
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarHorario() {
        $horario = tmHorario::all(['id','fecha','hora','evento_id']);
        return response()->json([
            'horario'=>$horario
        ]);
    }
}
