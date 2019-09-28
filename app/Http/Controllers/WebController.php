<?php

namespace App\Http\Controllers;

use App\Construction;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function map(){
        $marks = Construction::all();
        return view('map', compact('marks'));
    }
}
