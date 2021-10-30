<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;

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
        //return view('livewire.order');
        $order = OrderModel::where('invoice_number','like','%'.$this->search.'%')
                    ->orWhere('customer_id','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
            return view('livewire.order',[
            'ord' => $order
        ]);
    }

    // public function addOrder(){
    //     return redirect()->to('/tambahpesanan');
        
    // }

    // public function tambah(){
    //     return view('livewire.tambahpesanan');
    // }
}
