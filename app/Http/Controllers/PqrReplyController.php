<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File as FileFacades;
use Validator;
use App\PqrReply;
use App\File;

class PqrReplyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(PqrReply::all(), 200);
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

        $PqrReply = PqrReply::create($request->all());

        return response()->json(['message' => 'Creado correctamente.', 'data' => $PqrReply], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $PqrReply = PqrReply::find($id);
        if($PqrReply) return response()->json($PqrReply, 200);

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
        $PqrReply = PqrReply::find($id);
        if(!$PqrReply) return response()->json(['message' => 'No se encontro el registro'], 400);

        $PqrReply->update($request->all());
        return response()->json(['message' => 'Actualizado correctamente.'], 200);
    }
}
