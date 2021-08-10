<?php

namespace App\Http\Controllers;

use App\Models\Evento;
use Illuminate\Http\Request;

class EventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eventos = Evento::all();
        return response()->json($eventos);
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
        $evento = Evento::create($request->post());
        return response()->json([
            'message'=>'Evento ha sido creado',
            'evento'=>$evento
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */
    public function show(Evento $evento)
    {
        return response()->json($evento);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */
    public function edit(Evento $evento)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Evento $evento)
    {
        $evento->fill($request->post())->save();
        return response()->json([
            'message'=>'Evento Actualizado',
            'evento'=>$evento
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */
    public function destroy(Evento $evento)
    {
        $evento->delete();
        return response()->json([
            'message'=>'Evento Eliminado'
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarDepartamento() {
        $departamento = Departamento::all(['id','nombre','ISOcode']);
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
        $municipio = Municipio::all(['id','nombre','departamento_id']);
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
        $facilitador = Facilitador::all(['id','nombre','apellido']);
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
        $modalidad = Modalidad::all(['id','nombre']);
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
        $programa = Programa::all(['id','nombre']);
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
        $tipoCosto = TipoCosto::all(['id','nombre']);
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
        $zona = Zona::all(['id','nombre']);
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
