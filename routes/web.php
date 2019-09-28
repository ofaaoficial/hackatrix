<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('map', 'WebController@map')->name('web.map');
Route::get('obras', 'WebController@obras')->name('web.obras');
Route::get('porfile', 'WebController@porfile')->name('web.profile');
Route::get('pqrs', 'WebController@pqrs')->name('web.pqrs');



