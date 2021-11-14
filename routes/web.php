<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [App\Http\Controllers\Admin::class, 'customers'])->name('home');
Route::get('/admin/customers/list', [App\Http\Controllers\Admin::class, 'customers'])->name('customers');
Route::get('/admin/orders/list', [App\Http\Controllers\Admin::class, 'orders'])->name('orders');
Route::get('/admin/customer/{value}', [App\Http\Controllers\Admin::class, 'view_customer'])->name('customer');
Route::post('/admin/approve_kyc/{id}', [App\Http\Controllers\Admin::class, 'approve_kyc'])->name('approve');
Route::post('/admin/disapprove_kyc/{id}', [App\Http\Controllers\Admin::class, 'disapprove_kyc'])->name('disapprove');


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
