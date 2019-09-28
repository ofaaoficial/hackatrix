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
        return view('obras');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function porfile(){
        return view('pages-profile');
    }

    public function pqrs()
    {
        return view('pages-profile');
    }
}
