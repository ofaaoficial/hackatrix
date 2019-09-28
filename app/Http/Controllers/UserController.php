<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Validator;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        return response()->json($users, 200);
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
            'last_name' => 'required',
            'email' => 'required',
            'entity_id' => 'required',
            'rol_id' => 'required',
        ]);

        if($v->fails()) return response()->json($v->errors(), 400);

        User::create($request->all());

        return response()->json(['message' => 'Creado correctamente.'], 201);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return response()->json($user, 200);
    }
}
