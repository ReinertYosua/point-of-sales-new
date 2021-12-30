<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use DB;

use App\Models\Order as OrderModel;

class Order extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];

    public $search;

    public $date_order;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        session()->forget('cartedituser',[]);
        session()->forget('cartedit',[]);
        //return view('livewire.order');
        //DB::enableQueryLog();
        \DB::statement("SET SQL_MODE=''");//untuk menghilangkan error SQLSTATE[42000]: Syntax error or access violation: 1055
        $order = OrderModel::select('order.*', 'customer.first_name as firstname', 'customer.last_name as lastname')
                ->selectRaw('count(detail_order.invoice_number) as total_barang')    
                ->leftjoin('customer', 'customer.id','=','order.customer_id')
                ->leftjoin('detail_order', 'detail_order.invoice_number','=','order.invoice_number')
                ->where('order.invoice_number','like','%'.$this->search.'%')
                ->orWhere('customer.first_name','like','%'.$this->search.'%')
                ->orWhere('customer.last_name','like','%'.$this->search.'%')
                ->groupBy('order.invoice_number')
                ->orderBy('created_at', 'DESC')
                ->paginate(10);
        //dd(DB::getQueryLog());
            return view('livewire.order',[
            'ord' => $order
        ]);
    }

    public function edit($id){
        
		session()->put('IDOrder', $id);
        return redirect()->to('/ubahpesanan');
    }
    // public function addOrder(){
    //     return redirect()->to('/tambahpesanan');
        
    // }

    // public function tambah(){
    //     return view('livewire.tambahpesanan');
    // }
}
