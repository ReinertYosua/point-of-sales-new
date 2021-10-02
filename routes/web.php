<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Category;
use App\Http\Livewire\Supplier;
use App\Http\Livewire\Product;
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

Route::get('/kategori', Category::class);
Route::get('/supplier', Supplier::class);
Route::get('/product', Product::class);
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
