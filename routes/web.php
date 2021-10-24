<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Category;
use App\Http\Livewire\Supplier;
use App\Http\Livewire\Product;
use App\Http\Livewire\Customer;
use App\Http\Livewire\Order;
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

Auth::routes();

Route::group(['middleware' => ['auth']], function(){
    Route::get('/kategori', Category::class);
    Route::get('/supplier', Supplier::class);
    Route::get('/product', Product::class);
    Route::get('/pelanggan', Customer::class);
    Route::get('/pesanan', Order::class);
    Route::get('/tambahpesanan', [Order::class, 'tambah'])->name('tambahpesanan');
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
});