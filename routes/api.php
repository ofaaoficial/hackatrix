<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::prefix('v1')->group(function(){
    Route::apiResource('users','UserController');
    Route::apiResource('cities','CityController');
    Route::apiResource('constructions','ConstructionController');
    Route::apiResource('constructions_type','ConstructionTypeController');
    Route::apiResource('countries','CountryController');
    Route::apiResource('departments','DepartmentController');
    Route::apiResource('entities','EntityController');
    Route::apiResource('files','FileController');
    Route::apiResource('historicals','HistoricalController');
    Route::apiResource('localities','LocalityController');
    Route::apiResource('participations','ParticipationController');
    Route::apiResource('pqrs','PqrController');
    Route::apiResource('pqrs_reply','PqrReplyController');
    Route::apiResource('pqrs_type_request','PqrTypeRequestController');
    Route::apiResource('roles','RolController');
});