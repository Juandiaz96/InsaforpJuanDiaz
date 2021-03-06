<?php

namespace App\Http\Controllers;

use App\Models\TipoCosto;
use Illuminate\Http\Request;

class TipoCostoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipoCostos = TipoCosto::all();
        return response()->json($tipoCostos);
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
        $tipoCosto = TipoCosto::create($request->post());
        return response()->json([
            'message'=>'Tipo de Costo ha sido creado',
            'tipoCosto'=>$tipoCosto
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TipoCosto  $tipoCosto
     * @return \Illuminate\Http\Response
     */
    public function show(TipoCosto $tipoCosto)
    {
        return response()->json($tipoCosto);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TipoCosto  $tipoCosto
     * @return \Illuminate\Http\Response
     */
    public function edit(TipoCosto $tipoCosto)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TipoCosto  $tipoCosto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TipoCosto $tipoCosto)
    {
        $tipoCosto->fill($request->post())->save();
        return response()->json([
            'message'=>'Tipo de Costo Actualizado',
            'tipoCosto'=>$tipoCosto
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TipoCosto  $tipoCosto
     * @return \Illuminate\Http\Response
     */
    public function destroy(TipoCosto $tipoCosto)
    {
        $tipoCosto->delete();
        return response()->json([
            'message'=>'Tipo de Costo Eliminado'
        ]);
    }
}
