<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Category;
use App\Http\Livewire\Supplier;
use App\Http\Livewire\Product;
use App\Http\Livewire\Customer;
use App\Http\Livewire\Order;
use App\Http\Livewire\Addorder;
use App\Http\Livewire\Editorder;
use App\Http\Livewire\Detailorder;
use App\Http\Livewire\PrintOrder;
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
    Route::get('/kategori', Category::class)->name('category');
    Route::get('/pemasok', Supplier::class)->name('supplier');
    Route::get('/produk', Product::class)->name('product');
    Route::get('/pelanggan', Customer::class)->name('customer');
    Route::get('/pesanan', Order::class)->name('order');
    Route::get('/tambahpesanan', Addorder::class);
    Route::get('/ubahpesanan', Editorder::class);
    Route::get('/detailpesanan', Detailorder::class);
    Route::get('/order/cetak_pdf', [Detailorder::class,'cetakPesanan']);
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
});