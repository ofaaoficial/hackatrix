<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function login(Request $request){
        if($request->email && $request->password){
            $usuario = Usuario::where(['email' => $request->email])->first();
            if($usuario){
                $usuario->token = str_random(100). date('ym');
                $usuario->save();
                if(password_verify($request->password, $usuario->password)){
                    return response()->json(["message" => "Ingreso correcto.", "token" => $usuario->token], 201);
                }
            }
        }
        return response()->json(["message" => "Datos de acceso incorrecto."], 401);
    }
    public function logout(Request $request){
        try{
            $usuario = Usuario::where(['token' => $request->token])->first();
            $usuario->token = null;
            $usuario->save();
            return response()->json(['message' => 'Sesion cerrada correctamente.'], 201);
        }catch (\Exception $e){
            return response()->json(["message" => "Problema."], 422);
        }
    }
}
