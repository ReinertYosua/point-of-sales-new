<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;

use App\Models\TermPayment as TermPaymentModel;

class Addorder extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];
    public $search;
    public function updatingSearch(){
        $this->resetPage();
    }

    //public $termpay;
    public $date_order, $sent_date, $payment_status, $customer;

    public function render()
    {
        //$termpay = TermPaymentModel::paginate(3);
        $termpay = TermPaymentModel::where('day','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(3);
        // $detailJangka= TermPaymentModel::all()->paginate(10);
        return view('livewire.addorder',['termpay'=>$termpay]);
    }

    public function tampilJangkaPembayaran(){
        
    }
}
