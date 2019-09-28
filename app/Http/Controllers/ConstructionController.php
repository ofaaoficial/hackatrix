<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Construction;
use Validator;

class ConstructionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Construction::all()->load(['city', 'entity']), 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $v = Validator::make($request->all(), [
            'name' => 'required',
            'start_date' => 'required|date',
            'estimated_date_completion' => 'required|date',
            'objetive' => 'required',
            'general_observations' => 'required',
            'coordinates' => 'required',
            'entity_id' => 'required',
            'city_id' => 'required',
            'construction_type_id' => 'required',
            'money_invested' => 'required',
        ]);

        if($v->fails()) return response()->json($v->errors(), 400);

        $construction = Construction::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $construction], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $construction = Construction::find($id);
        if($construction) return response()->json($construction, 200);

        return response()->json(['message' => 'No se encontro el registro'], 400);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $construction = Construction::find($id);
        if(!$construction) return response()->json(['message' => 'No se encontro el registro'], 400);

        $construction->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
