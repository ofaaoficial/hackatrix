<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use ConstructionType;

class ConstructionTypeController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(ConstructionType::all(), 200);
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

        $construction_type = ConstructionType::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $construction_type], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $construction_type = ConstructionType::find($id);
        if($construction_type) return response()->json($construction_type, 200);

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
        $construction_type = ConstructionType::find($id);
        if(!$construction_type) return response()->json(['message' => 'No se encontro el registro'], 400);

        $construction_type->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
