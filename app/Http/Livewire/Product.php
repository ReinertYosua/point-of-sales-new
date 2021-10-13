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
    protected $listeners = ['delete','tmpCategory','tmpSupplier'];
    
    public $search;

    public $idPro, $category_id, $supplier_id, $name, $type, $qty, $capital_price, $sell_price;
    public $unit, $description, $listCategory=[], $listSupplier=[], $detailProduk = [];

    public function updatingSearch(){
        $this->resetPage();
    }

    public function mount(){
        $this->listCategory = CategoryModel::all();
        $this->listSupplier = SupplierModel::all();
    }

    public function render()
    {
        $product = ProductModel::select('product.*', 'category.name as cat_name', 'supplier.company_name as company_name','supplier.contact_name as contact_name')
                    ->join('category', 'category.id', '=', 'product.category_id')
                    ->join('supplier', 'supplier.id','=','product.supplier_id')
                    ->where('product.name','like','%'.$this->search.'%')
                    ->orderBy('product.created_at', 'DESC')->paginate(10);
        return view('livewire.product',[
            'pro' => $product
        ]);
    }

    public function tmpCategory($id){
        $this->category_id = $id;
    }
    public function tmpSupplier($id){
        $this->supplier_id = $id;
    }

    public function store(){
        $this->validate([
            'category_id' => 'required',
            'supplier_id' => 'required',
            'name' => 'required',
            'type' => 'required',
            'qty' => 'required',
            'capital_price' => 'required',
            'sell_price' => 'required',
            'unit' => 'required',
            //'description' => 'required'
        ]);

        ProductModel::create([
            'category_id' => $this->category_id,
            'supplier_id' => $this->supplier_id,
            'name' => $this->name,
            'type' => $this->type,
            'qty' => $this->qty,
            'capital_price' => $this->capital_price,
            'sell_price' => $this->sell_price,
            'unit' => $this->unit,
            'description' => $this->description,
        ]);

        $this->category_id = "";
        $this->supplier_id = "";
        $this->name = "";
        $this->type = "";
        $this->qty = "";
        $this->capital_price = "";
        $this->sell_price = "";
        $this->unit = "";
        $this->description = "";
        $this->dispatchBrowserEvent('close-modal');
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Produk Baru berhasil dibuat! Silahkan tambahkan Gambar untuk produk ini !', 
            'text' => 'Data ditambahkan ke database.'
        ]);
    }

    public function detail($id){
        $this->detailProduk = ProductModel::join('category', 'category.id', '=', 'product.category_id')
                            ->join('supplier', 'supplier.id','=','product.supplier_id')
                            ->where('product.id', $id)
                            ->get(['product.*', 'category.name as cat_name', 'supplier.company_name as company_name','supplier.contact_name as contact_name']);
    }

    public function edit($id){
        $pro = ProductModel::where('id',$id)->first();
        $this->idPro = $id;
        $this->category_id = $pro->category_id;
        $this->supplier_id = $pro->supplier_id;
        $this->name = $pro->name;
        $this->type = $pro->type;
        $this->qty = $pro->qty;
        $this->capital_price = $pro->capital_price;
        $this->sell_price = $pro->sell_price;
        $this->unit = $pro->unit;
        $this->description = $pro->description;
        $this->dispatchBrowserEvent('tampilData', ['idKat' => $pro->category_id, 'idSup' => $pro->supplier_id]);
    }
}
