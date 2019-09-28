<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Department;
use Dotenv\Validator;

class DepartmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Department::all(), 200);
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
            'name' => 'required|unique',
            'code' => 'required|unique',
        ]);

        if($v->fails()) return response()->json($v->errors(), 400);

        $department = Department::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $department], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $department = Department::find($id);
        if($department) return response()->json($department, 200);

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
        $department = Department::find($id);
        if(!$department) return response()->json(['message' => 'No se encontro el registro'], 400);

        $department->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
