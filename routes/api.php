<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Getcustomer;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResource('customer', Customer::class);
Route::get('getcustomer', 'App\Http\Controllers\Getcustomer@index');
Route::post('signup', 'App\Http\Controllers\Getcustomer@signup');
Route::get('complaint_types', 'App\Http\Controllers\Getcustomer@complaint_types');
Route::post('register_complaint', 'App\Http\Controllers\Getcustomer@register_complaint');
Route::post('profile', 'App\Http\Controllers\Getcustomer@profile');

