<?php

namespace App\Http\Controllers;

use App\Models\tc_zona;
use Illuminate\Http\Request;

class TcZonaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $zona = tcZona::all(['id','nombre','estado']);
        return response()->json($zona);
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
        $zona = tcZona::create($request->post());
        return response()->json([
            'message'=>'Zona Almacenado con Éxito',
            'zona'=>$zona
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_zona  $tc_zona
     * @return \Illuminate\Http\Response
     */
    public function show(tc_zona $tc_zona)
    {
        return response()->json($tc_zona);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_zona  $tc_zona
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_zona $tc_zona)
    {
        $tc_zona->fill($request->post()->save());
        return response()->json([
            'message'=>'Zona Editado con Éxito',
            'zona'=>$tc_zona
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_zona  $tc_zona
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_zona $tc_zona)
    {
        $tc_zona->fill($request->post()->save());
        return response()->json([
            'message'=>'Zona Actualizado con Éxito',
            'zona'=>$tc_zona
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_zona  $tc_zona
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_zona $tc_zona)
    {
        $tc_zona->delete();
        return response()->json([
            'message'=>'Zona Eliminado con Éxito'
        ]);
    }
}
