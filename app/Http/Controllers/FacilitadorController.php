<?php

namespace App\Http\Controllers;

use App\Models\Facilitador;
use Illuminate\Http\Request;

class FacilitadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $facilitadores = Facilitador::all();
        return response()->json($facilitadores);
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
        $facilitador = Facilitador::create($request->post());
        return response()->json([
            'message'=>'Facilitador ha sido creado',
            'facilitador'=>$facilitador
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Facilitador  $facilitador
     * @return \Illuminate\Http\Response
     */
    public function show(Facilitador $facilitador)
    {
        return response()->json($facilitador);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Facilitador  $facilitador
     * @return \Illuminate\Http\Response
     */
    public function edit(Facilitador $facilitador)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Facilitador  $facilitador
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Facilitador $facilitador)
    {
        $facilitador->fill($request->post())->save();
        return response()->json([
            'message'=>'Facilitador Actualizado',
            'facilitador'=>$facilitador
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Facilitador  $facilitador
     * @return \Illuminate\Http\Response
     */
    public function destroy(Facilitador $facilitador)
    {
        $facilitador->delete();
        return response()->json([
            'message'=>'Facilitador Eliminado'
        ]);
    }
}
