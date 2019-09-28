<?php

namespace App\Http\Middleware;

use Closure;
use App\User;

class auth_api
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(!$request->token) return response()->json(['message' => 'Token no definido'], 400);

        $user = User::where('token', $request->token)->first();

        if(!$user) return response()->json(['message' => 'Token invalido.'], 400);

        return $next($request);
    }
}
