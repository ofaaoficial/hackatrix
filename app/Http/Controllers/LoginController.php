<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Validator;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    public function login(Request $request){
        $v = Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required'
        ]);
        if($v->fails()) return response()->json($v->errors(), 400);

        if($this->attemptLogin($request)){
            $user = $this->guard()->user();
            $user->token = str_random(100). date('ym');
            $user->save();
            return response()->json(['message' => 'Ingreso satisfactorio.', 'information' => $user], 200);
        }
        return response()->json(['message' => 'Datos de acceso incorrectos.'], 400);
    }

    public function logout(Request $request){
        $this->guard()->logout();
        $token = $request->bearerToken() ?: $request->token;
        $user = User::where(['token' => $token])->first();
        if($user){
            $user->token = '';
            $user->save();
            return response()->json(['message' => 'Cierre de sesion satisfactorio.'], 200);
        }
        return response()->json(['message' => 'Error al cerrar sesion.'],400);
    }
}
