<?php

namespace App\Http\Controllers;

use App\Construction;
use Illuminate\Http\Request;

class WebController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function map()
    {
        $marks = Construction::all();
        return view('map', compact('marks'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function obras(){
        $obras = Construction::all();
        return view('obras', compact('obras'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function porfile(){
        return view('pages-profile');
    }

    public function pqrs()
    {
        return view('pqrs-user');
    }

    public function login()
    {
        return view('login');
    }

    public function login_auth()
    {
        return  redirect()->route('web.obras');
    }

    public function home()
    {
        return view('HomePageUser');
    }
}
