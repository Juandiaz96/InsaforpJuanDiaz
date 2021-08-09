<?php

namespace App\Http\Controllers;

use App\Models\tc_facilitador;
use Illuminate\Http\Request;

class TcFacilitadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $facilitador = tcFacilitador::all(['id','nombre','apellido','correo','estado']);
        return response()->json($facilitador);
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
        $facilitador = tcFacilitador::create($request->post());
        return response()->json([
            'message'=>'Facilitador Almacenado con Éxito',
            'facilitador'=>$facilitador
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_facilitador  $tc_facilitador
     * @return \Illuminate\Http\Response
     */
    public function show(tc_facilitador $tc_facilitador)
    {
        return response()->json($tc_facilitador);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_facilitador  $tc_facilitador
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_facilitador $tc_facilitador)
    {
        $tc_facilitador->fill($request->post()->save());
        return response()->json([
            'message'=>'Facilitador Editado con Éxito',
            'facilitador'=>$tc_facilitador
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_facilitador  $tc_facilitador
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_facilitador $tc_facilitador)
    {
        $tc_facilitador->fill($request->post()->save());
        return response()->json([
            'message'=>'Facilitador Actualizado con Éxito',
            'facilitador'=>$tc_facilitador
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_facilitador  $tc_facilitador
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_facilitador $tc_facilitador)
    {
        $tc_facilitador->delete();
        return response()->json([
            'message'=>'Facilitador Eliminado con Éxito'
        ]);
    }
}
