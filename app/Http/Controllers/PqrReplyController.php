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
            'answer' => 'required',
            'date' => 'required',
            'pqr_id' => 'required',
        ]);

        if($v->fails()) return response()->json($v->errors(), 400);

        $data = $request->all();
        
        //Recibimos el archivo
        $file_pqr = $request->file('file');
        if ($file_pqr) {
            //asignamos un nombre al archivo
            $file_name = time().$file_pqr->getClientOriginalName();
            //Pasamos el archivo al servidor.
            Storage::disk('files')->put($file_name, FileFacades::get($file_pqr));
            //Guardamos la infromacion en la DB
            $file = new File();
            $file->name = $file_pqr->getClientOriginalName();
            $file->type = FileFacades::extension($file_name);
            $file->ubication =  'storage/app/files_pqrs/';
            $file->save();
            $data['files_id'] = $file->id;
        }

        $PqrReply = PqrReply::create($data);
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
