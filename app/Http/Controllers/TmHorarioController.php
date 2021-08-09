<?php

namespace App\Http\Controllers;

use App\Models\tm_horario;
use Illuminate\Http\Request;

class TmHorarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $horario = tmHorario::all([]);
        return response()->json($horario);
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
        $horario = tmHorario::create($request->post());
        return response()->json([
            'message'=>'Horario Almacenado con Éxito',
            'horario'=>$horario
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tm_horario  $tm_horario
     * @return \Illuminate\Http\Response
     */
    public function show(tm_horario $tm_horario)
    {
        return response()->json($tm_horario);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tm_horario  $tm_horario
     * @return \Illuminate\Http\Response
     */
    public function edit(tm_horario $tm_horario)
    {
        $tm_horario->fill($request->post()->save());
        return response()->json([
            'message'=>'Horario Editado con Éxito',
            'horario'=>$tm_horario
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tm_horario  $tm_horario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tm_horario $tm_horario)
    {
        $tm_horario->fill($request->post()->save());
        return response()->json([
            'message'=>'Horario Actualizado con Éxito',
            'horario'=>$tm_horario
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tm_horario  $tm_horario
     * @return \Illuminate\Http\Response
     */
    public function destroy(tm_horario $tm_horario)
    {
        $tm_horario->delete();
        return response()->json([
            'message'=>'Horario Eliminado con Éxito'
        ]);
    }
}
