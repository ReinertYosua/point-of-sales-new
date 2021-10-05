<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;

use App\Models\Supplier as SupplierModel;

class Supplier extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];
    
    public $idSup,$company_name,$contact_name,$contact_title,$address;
    public $city,$region,$country,$postal_code,$phone,$account_number,$bank_name,$description;
    public $search, $detailSup = [];

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $supplier = SupplierModel::where('contact_name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.supplier',[
            'sup' => $supplier
        ]);
    }

    public function store(){
        $this->validate([
            'company_name' => 'required',
            'contact_name' => 'required',
            'address' => 'required',
            'phone' => 'required'
        ]);

        SupplierModel::create([
            'company_name' => $this->company_name,
            'contact_name' => $this->contact_name,
            'contact_title' => $this->contact_title,
            'address' => $this->address,
            'city' => $this->city,
            'region' => $this->region,
            'country' => $this->country,
            'postal_code' => $this->postal_code,
            'phone' => $this->phone,
            'account_number' => $this->account_number,
            'bank_name' => $this->bank_name,
            'description' => $this->description
        ]);

        $this->company_name ="";
        $this->contact_name ="";
        $this->contact_title ="";
        $this->address ="";
        $this->city ="";
        $this->region ="";
        $this->country ="";
        $this->postal_code ="";
        $this->phone ="";
        $this->account_number ="";
        $this->bank_name ="";
        $this->description ="";
        $this->dispatchBrowserEvent('close-modal');
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Supplier Baru berhasil dibuat!', 
            'text' => 'Data ditambahkan ke database.'
        ]);
    }

    public function edit($id){
        $sup = SupplierModel::where('id', $id)->first();
        $this->idSup = $id;
        $this->company_name = $sup->company_name;
        $this->contact_name = $sup->contact_name;
        $this->contact_title = $sup->contact_title;
        $this->address = $sup->address;
        $this->city = $sup->city;
        $this->region = $sup->region;
        $this->country = $sup->country;
        $this->postal_code = $sup->postal_code;
        $this->phone = $sup->phone;
        $this->account_number = $sup->account_number;
        $this->bank_name = $sup->bank_name;
        $this->description = $sup->description;
    }

    public function update(){
        $this->validate([
            'company_name' => 'required',
            'contact_name' => 'required',
            'address' => 'required',
            'phone' => 'required'
        ]);

        if($this->idSup){
            $sup = SupplierModel::find($this->idSup);
            $sup->update([
                'company_name' => $this->company_name,
                'contact_name' => $this->contact_name,
                'contact_title' => $this->contact_title,
                'address' => $this->address,
                'city' => $this->city,
                'region' => $this->region,
                'country' => $this->country,
                'postal_code' => $this->postal_code,
                'phone' => $this->phone,
                'account_number' => $this->account_number,
                'bank_name' => $this->bank_name,
                'description' => $this->description
            ]);
            $this->company_name ="";
            $this->contact_name ="";
            $this->contact_title ="";
            $this->address ="";
            $this->city ="";
            $this->region ="";
            $this->country ="";
            $this->postal_code ="";
            $this->phone ="";
            $this->account_number ="";
            $this->bank_name ="";
            $this->description ="";
            $this->dispatchBrowserEvent('close-modal');
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Supplier berhasil diubah!', 
                'text' => 'Data pada database diubah.'
            ]);
        }
    }

    public function detail($id){
        $this->detailSup = SupplierModel::where('id', $id)->get();
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
            SupplierModel::where('id',$id)->delete();
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Supplier berhasil dihapus!', 
                'text' => 'Data pada database dihapus.'
            ]);
        }
    }
}
