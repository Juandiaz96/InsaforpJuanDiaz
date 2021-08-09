<?php

namespace App\Http\Controllers;

use App\Models\tc_modalidad;
use Illuminate\Http\Request;

class TcModalidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $modalidad = tcModalidad::all(['id','nombre','estado']);
        return response()->json($modalidad);
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
        $modalidad = tcModalidad::create($request->post());
        return response()->json([
            'message'=>'Modalidad Almacenado con Éxito',
            'modalidad'=>$modalidad
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_modalidad  $tc_modalidad
     * @return \Illuminate\Http\Response
     */
    public function show(tc_modalidad $tc_modalidad)
    {
        return response()->json($tc_modalidad);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_modalidad  $tc_modalidad
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_modalidad $tc_modalidad)
    {
        $tc_modalidad->fill($request->post()->save());
        return response()->json([
            'message'=>'Modalidad Editado con Éxito',
            'modalidad'=>$tc_modalidad
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_modalidad  $tc_modalidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_modalidad $tc_modalidad)
    {
        $tc_modalidad->fill($request->post()->save());
        return response()->json([
            'message'=>'Modalidad Actualizado con Éxito',
            'modalidad'=>$tc_modalidad
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_modalidad  $tc_modalidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_modalidad $tc_modalidad)
    {
        $tc_modalidad->delete();
        return response()->json([
            'message'=>'Modalidad Eliminado con Éxito'
        ]);
    }
}
