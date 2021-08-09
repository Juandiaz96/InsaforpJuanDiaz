<?php

namespace App\Http\Controllers;

use App\Models\tc_tipo_costo;
use Illuminate\Http\Request;

class TcTipoCostoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoCosto = tcTipoCosto::all(['id','nombre','estado']);
        return response()->json($tipoCosto);
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
        $tipoCosto = tcTipoCosto::create($request->post());
        return response()->json([
            'message'=>'Tipo Costo Almacenado con Éxito',
            'tipoCosto'=>$tipoCosto
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\tc_tipo_costo  $tc_tipo_costo
     * @return \Illuminate\Http\Response
     */
    public function show(tc_tipo_costo $tc_tipo_costo)
    {
        return response()->json($tc_tipo_costo);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\tc_tipo_costo  $tc_tipo_costo
     * @return \Illuminate\Http\Response
     */
    public function edit(tc_tipo_costo $tc_tipo_costo)
    {
        $tc_tipo_costo->fill($request->post()->save());
        return response()->json([
            'message'=>'Tipo Costo Editado con Éxito',
            'tipoCosto'=>$tc_tipo_costo
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\tc_tipo_costo  $tc_tipo_costo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, tc_tipo_costo $tc_tipo_costo)
    {
        $tc_tipo_costo->fill($request->post()->save());
        return response()->json([
            'message'=>'Tipo Costo Actualizado con Éxito',
            'tipoCosto'=>$tc_tipo_costo
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\tc_tipo_costo  $tc_tipo_costo
     * @return \Illuminate\Http\Response
     */
    public function destroy(tc_tipo_costo $tc_tipo_costo)
    {
        $tc_tipo_costo->delete();
        return response()->json([
            'message'=>'Tipo Costo Eliminado con Éxito'
        ]);
    }
}
