<?php

namespace App\Http\Controllers;

use App\Models\tc_departamento;
use Illuminate\Http\Request;

class TcDepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departamento = tcDepartamento::all(['id','nombre','ISOcode','estado']);
        return response()->json($departamento);
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
        $departamento = tcDepartamento::create($request->post());
        return response()->json([
            'message'=>'Departamento Almacenado con Éxito',
            'departamento'=>$departamento
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_departamento  $tc_departamento
     * @return \Illuminate\Http\Response
     */
    public function show(tc_departamento $tc_departamento)
    {
        return response()->json($tc_departamento);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_departamento  $tc_departamento
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_departamento $tc_departamento)
    {
        $tc_departamento->fill($request->post()->save());
        return response()->json([
            'message'=>'Departamento Editado con Éxito',
            'departamento'=>$tc_departamento
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_departamento  $tc_departamento
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_departamento $tc_departamento)
    {
        $tc_departamento->fill($request->post()->save());
        return response()->json([
            'message'=>'Departamento Actualizado con Éxito',
            'departamento'=>$tc_departamento
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_departamento  $tc_departamento
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_departamento $tc_departamento)
    {
        $tc_departamento->delete();
        return response()->json([
            'message'=>'Departamento Eliminado con Éxito'
        ]);
    }
}
