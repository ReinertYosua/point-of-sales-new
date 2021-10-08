<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

use App\Models\Product as ProductModel;
use App\Models\Category as CategoryModel;
use App\Models\Supplier as SupplierModel;

class Product extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete','viewCategory'];
    
    public $search;

    public $category_id, $supplier_id, $name, $type, $qty, $capital_price, $sell_price;
    public $unit, $description, $listCategory=[], $listSupplier=[];

    public function mount(){
        $this->listCategory = CategoryModel::all();
        $this->listSupplier = SupplierModel::all();
    }

    public function render()
    {
        $product = ProductModel::where('name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.product',[
            'pro' => $product
        ]);
    }

    public function viewCategory($id){
        dd($id);
        //$this->listCategory = CategoryModel::where('id', $id)->get();
    }


    public function store(){

    }
}
