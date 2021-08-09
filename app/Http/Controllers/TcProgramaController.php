<?php

namespace App\Http\Controllers;

use App\Models\tc_programa;
use Illuminate\Http\Request;

class TcProgramaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $programa = tcPrograma::all(['id','nombre','estado']);
        return response()->json($programa);
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
        $programa = tcPrograma::create($request->post());
        return response()->json([
            'message'=>'Programa Almacenado con Éxito',
            'programa'=>$programa
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_programa  $tc_programa
     * @return \Illuminate\Http\Response
     */
    public function show(tc_programa $tc_programa)
    {
        return response()->json($tc_programa);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_programa  $tc_programa
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_programa $tc_programa)
    {
        $tc_programa->fill($request->post()->save());
        return response()->json([
            'message'=>'Programa Editado con Éxito',
            'programa'=>$tc_programa
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_programa  $tc_programa
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_programa $tc_programa)
    {
        $tc_programa->fill($request->post()->save());
        return response()->json([
            'message'=>'Programa Actualizado con Éxito',
            'programa'=>$tc_programa
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_programa  $tc_programa
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_programa $tc_programa)
    {
        $tc_programa->delete();
        return response()->json([
            'message'=>'Programa Eliminado con Éxito'
        ]);
    }
}
