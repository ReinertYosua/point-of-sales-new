<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;

use App\Models\Customer as CustomerModel;

class Customer extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];

    public $search, $detailCus = [];

    public $idCust, $first_name, $last_name, $address, $city, $province, $country;
    public $phone1, $phone2, $postal_code, $account_number, $bank_name, $description;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $customer = CustomerModel::where('first_name','like','%'.$this->search.'%')
                    ->orWhere('last_name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.customer',[
            'cus' => $customer
        ]);
    }

    public function store(){
        $this->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'address' => 'required',
            'phone1' => 'required'
        ]);

        CustomerModel::create([
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'address' => $this->address,
            'city' => $this->city,
            'province' => $this->province,
            'country' => $this->country,
            'phone1' => $this->phone1,
            'phone2' => $this->phone2,
            'postal_code' => $this->postal_code,
            'account_number' => $this->account_number,
            'bank_name' => $this->bank_name,
            'description' => $this->description
        ]);

        $this->first_name ="";
        $this->last_name ="";
        $this->address ="";
        $this->city ="";
        $this->province ="";
        $this->country ="";
        $this->phone1 ="";
        $this->phone2 ="";
        $this->postal_code ="";
        $this->account_number ="";
        $this->bank_name ="";
        $this->description ="";
        $this->dispatchBrowserEvent('close-modal');
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Pelanggan Baru berhasil dibuat!', 
            'text' => 'Data ditambahkan ke database.'
        ]);
    }

    public function edit($id){
        $cus = CustomerModel::where('id', $id)->first();
        $this->idCust = $id;
        $this->first_name = $cus->first_name;
        $this->last_name = $cus->last_name;
        $this->address = $cus->address;
        $this->city = $cus->city;
        $this->province = $cus->province;
        $this->country = $cus->country;
        $this->phone1 = $cus->phone1;
        $this->phone2 = $cus->phone2;
        $this->postal_code = $cus->postal_code;
        $this->account_number = $cus->account_number;
        $this->bank_name = $cus->bank_name;
        $this->description = $cus->description;
    }

    public function detail($id){
        $this->detailCus = CustomerModel::where('id', $id)->get();
    }
}
