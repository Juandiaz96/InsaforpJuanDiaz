<?php

namespace App\Http\Controllers;

use App\Models\Modalidad;
use Illuminate\Http\Request;

class ModalidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $modalidades = Modalidad::all();
        return response()->json($modalidades);
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
        $modalidad = Modalidad::create($request->post());
        return response()->json([
            'message'=>'Modalidad ha sido creado',
            'modalidad'=>$modalidad
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Modalidad  $modalidad
     * @return \Illuminate\Http\Response
     */
    public function show(Modalidad $modalidad)
    {
        return response()->json($modalidad);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Modalidad  $modalidad
     * @return \Illuminate\Http\Response
     */
    public function edit(Modalidad $modalidad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Modalidad  $modalidad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Modalidad $modalidad)
    {
        $modalidad->fill($request->post())->save();
        return response()->json([
            'message'=>'Modalidad Actualizado',
            'modalidad'=>$modalidad
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Modalidad  $modalidad
     * @return \Illuminate\Http\Response
     */
    public function destroy(Modalidad $modalidad)
    {
        $modalidad->delete();
        return response()->json([
            'message'=>'Modalidad Eliminado'
        ]);
    }
}
