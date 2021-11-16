<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Http\Request;

use App\Models\TermPayment as TermPaymentModel;
use App\Models\Customer as CustomerModel;

class Addorder extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];
    public $search;
    public $searchcus;

    public $date_order, $sent_date, $customer, $term_payment, $address, $descriptionOrder;

    public $day_term, $descriptionterm, $listTermPayment=[];

    public $inputs = [];
    public $i = 1;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function add($ip)
    {
        dd($ip);
        $ip = $ip + 1;
        $this->i = $ip;
        array_push($this->inputs ,$ip);
    }

    public function remove($i)
    {
        unset($this->inputs[$i]);
    }

    public function render()
    {
        //$termpay = TermPaymentModel::paginate(3);
        $termpay = TermPaymentModel::where('day','like','%'.$this->search.'%')
                    ->orWhere('description','like','%'.$this->search.'%')
                    ->orderBy('created_at', 'DESC')->paginate(3);
        
        $listcustomer = CustomerModel::where('first_name','like','%'.$this->searchcus.'%')
                        ->orWhere('last_name','like','%'.$this->searchcus.'%')
                        ->orWhere('address','like','%'.$this->searchcus.'%')
                        ->orWhere('phone1','like','%'.$this->searchcus.'%')
                        ->paginate(5);

        $lstTermPayment = TermPaymentModel::all(); 
        return view('livewire.addorder',['termpay'=>$termpay, 'listTerm' => $lstTermPayment, 'listCus' => $listcustomer]);
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

    public function assign($id){
        $cust = CustomerModel::where('id',$id)->first();
        $this->address = $cust->address;
        $this->customer = $cust->first_name." ".$cust->last_name." - ".$cust->phone1;
    }

}
