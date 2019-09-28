<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;

class RolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Role::all(), 200);
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
            'description' => 'required',
        ]);

        if($v->fails()) return response()->json($v->errors(), 400);

        $role = Role::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $role], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $role = Role::find($id);
        if($role) return response()->json($role, 200);

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
        $role = Role::find($id);
        if(!$role) return response()->json(['message' => 'No se encontro el registro'], 400);

        $role->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
