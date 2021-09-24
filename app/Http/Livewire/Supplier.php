<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;

use App\Models\Supplier as SupplierModel;

class Supplier extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $search;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $supplier = SupplierModel::where('company_name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.supplier',[
            'sup' => $supplier
        ]);
    }
}
