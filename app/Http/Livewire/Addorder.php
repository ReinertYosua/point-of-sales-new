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

    public $date_order, $sent_date, $payment_status, $customer, $description;

    public $day_term, $descriptionterm, $listTermPayment=[];

    public $test;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function mount(){
        $this->listTermPayment = TermPaymentModel::all(); 
        $this->test = "Reinert"; 
    }


    public function render()
    {
        //$termpay = TermPaymentModel::paginate(3);
        $termpay = TermPaymentModel::where('day','like','%'.$this->search.'%')
                    ->orWhere('description','like','%'.$this->search.'%')
                    ->orderBy('created_at', 'DESC')->paginate(3);
        // $detailJangka= TermPaymentModel::all()->paginate(10);
        return view('livewire.addorder',['termpay'=>$termpay]);
    }

    public function saveTermPayment(){
        $this->validate([
            'day_term'=>'required',
            'descriptionterm'=>'required'
        ]);

        TermPaymentModel::create([
            'day' => $this->day_term,
            'description' => $this->descriptionterm,
        ]);

        $this->day_term = "";
        $this->descriptionterm = "";
        //$this->dispatchBrowserEvent('close-modal');
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Jangka Waktu Pembayaran berhasil dibuat!', 
            'text' => 'Data ditambahkan ke database.'
        ]);
    }

    public function deleteConfirm($id){
        $this->dispatchBrowserEvent('swal:confirm', [
            'type' => 'warning',  
            'message' => 'Apakah anda yakin ?', 
            'text' => 'Jika dihapus, anda tidak dapat mengembalikan data ini!',
            'id' => $id,
        ]);
    }

    public function delete($id){
        if($id){
            TermPaymentModel::where('id',$id)->delete();
            //session()->flash('message', 'Kategori berhasil dihapus');
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Jangka Waktu Pembayaran berhasil dihapus!', 
                'text' => 'Data pada database dihapus.'
            ]);
        }
    }

}
