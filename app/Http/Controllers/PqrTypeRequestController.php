<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PqrsTypeRequest;

class PqrTypeRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pqrsTypeRequest = PqrsTypeRequest::all();
        return response()->json($pqrsTypeRequest, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validamos la informacion
        $this->validate($request, [
            'name' => ['required', 'string', 'max:255'],
        ]);

        //Creamos
        $pqrsTypeRequest = new PqrsTypeRequest();
        $pqrsTypeRequest->name = $request->name;

        //Guardamos
        $pqrsTypeRequest->save();

        //retornamos una respuesta.
        return response()->json([
            'message' => 'Creado.',
            'data' => $pqrsTypeRequest
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pqrsTypeRequest = PqrsTypeRequest::findOrFail($id);
        return response()->json([
            'data' => $pqrsTypeRequest
        ], 200);
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
        //Validamos la informacion
        $this->validate($request, [
            'name' => ['required', 'string', 'max:255'],
        ]);

        //Creamos
        $pqrsTypeRequest = PqrsTypeRequest::findOrFail($id);
        $pqrsTypeRequest->name = $request->name;

        //Guardamos
        $pqrsTypeRequest->save();

        //retornamos una respuesta.
        return response()->json([
            'message' => 'Actualizado.',
            'data' => $pqrsTypeRequest
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pqrsTypeRequest = PqrsTypeRequest::findOrFail($id);
        $pqrsTypeRequest->delete();
        return response()->json([
            'message' => 'Eliminado.',
            'data' => $pqrsTypeRequest
        ], 200);
    }
}
