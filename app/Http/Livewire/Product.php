<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

use App\Models\Product as ProductModel;

class Product extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete'];

    public $search;

    public $category_id, $supplier_id, $name, $type, $image, $qty, $capital_price, $sell_price;
    public $unit, $description;

    public function render()
    {
        $product = ProductModel::where('name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.product',[
            'pro' => $product
        ]);
    }

    public function previewImage(){
        $this->validate([
            'image' => 'image|max:2048'
        ]);
    }

    public function store(){

    }
}
