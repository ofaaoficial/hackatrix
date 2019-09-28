<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File as FileFacades;
use Validator;
use App\Pqr;
use App\File;

class PqrController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Pqr::all(), 200);
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
            'description' => 'required',
            'email' => 'required',
            'date' => 'required',
            'file_id' => 'required',
            'pqrs_type_request_id' => 'required',
            'entity_id' => 'required',
        ]);

        if ($v->fails()) return response()->json($v->errors(), 400);

        $entity = Pqr::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $entity], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $entity = Pqr::find($id);
        if ($entity) return response()->json($entity, 200);

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
        $entity = Pqr::find($id);
        if (!$entity) return response()->json(['message' => 'No se encontro el registro'], 400);

        $entity->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
