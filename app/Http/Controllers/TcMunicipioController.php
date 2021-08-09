<?php

namespace App\Http\Controllers;

use App\Models\tc_municipio;
use Illuminate\Http\Request;

class TcMunicipioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $municipio = tcMunicipio::all(['id','nombre','estado','departamento_id']);
        return response()->json($municipio);
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
        $municipio = tcMunicipio::create($request->post());
        return response()->json([
            'message'=>'Municipio Almacenado con Éxito',
            'municipio'=>$municipio
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_municipio  $tc_municipio
     * @return \Illuminate\Http\Response
     */
    public function show(tc_municipio $tc_municipio)
    {
        return response()->json($tc_municipio);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_municipio  $tc_municipio
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_municipio $tc_municipio)
    {
        $tc_municipio->fill($request->post()->save());
        return response()->json([
            'message'=>'Municipio Editado con Éxito',
            'municipio'=>$tc_municipio
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_municipio  $tc_municipio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_municipio $tc_municipio)
    {
        $tc_municipio->fill($request->post()->save());
        return response()->json([
            'message'=>'Municipio Actualizado con Éxito',
            'municipio'=>$tc_municipio
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_municipio  $tc_municipio
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_municipio $tc_municipio)
    {
        $tc_municipio->delete();
        return response()->json([
            'message'=>'Municipio Eliminado con Éxito'
        ]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cargarDepartamento() {
        $departamento = tcDepartamento::all(['id','nombre']);
        return response()->json([
            'departamento'=>$departamento
        ]);
    }
}
