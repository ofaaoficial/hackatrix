<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Locality;

class LocalityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Locality::all(), 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $v = Validator::make($request->all(), [
            'name' => 'required|unique',
            'code' => 'required|unique',
        ]);

        if ($v->fails()) return response()->json($v->errors(), 400);

        $locality = Locality::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $locality], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $locality = Locality::find($id);
        if ($locality) return response()->json($locality, 200);

        return response()->json(['message' => 'No se encontro el registro'], 400);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $locality = Locality::find($id);
        if (!$locality) return response()->json(['message' => 'No se encontro el registro'], 400);

        $locality->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
