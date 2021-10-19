<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;

use App\Models\Product as ProductModel;
use App\Models\Category as CategoryModel;
use App\Models\Supplier as SupplierModel;
use App\Models\ImageProduct as ImageProductModel;

use Illuminate\Support\Facades\Storage;

class Product extends Component
{
    use WithPagination;
    use WithFileUploads;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete','tmpCategory','tmpSupplier'];
    
    public $search;

    public $idPro, $category_id, $supplier_id, $name, $type, $qty, $capital_price, $sell_price;
    public $unit, $description, $listCategory=[], $listSupplier=[], $detailProduk = [], $detailGambarProduk= [];
    public $imageFeatured;
    public $imageFeaturedEdit;
    public $image=[];
    public $imageEdit=[];

    
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

    public function validateDesc($stat){
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
        if($stat==1){
            $this->dispatchBrowserEvent('show-modal-gambar');
        }else{
            $this->dispatchBrowserEvent('show-modal-editgambar');
        }
        
    }

    public function save(){
        $this->validate([
            'image.0' => 'required',
            'image.*' => 'image|mimes:jpg,jpeg,png,svg,gif|max:5000', // 1MB Max
            'imageFeatured' => 'required|image|mimes:jpg,jpeg,png,svg,gif|max:5000',
        ]);

        $imageFeaturedName = md5($this->imageFeatured.microtime().'.'.$this->imageFeatured->extension());
        Storage::putFileAs(
            'public/images',
            $this->imageFeatured,
            $imageFeaturedName
        );
        $product=ProductModel::create([
            'category_id' => $this->category_id,
            'supplier_id' => $this->supplier_id,
            'name' => $this->name,
            'type' => $this->type,
            'qty' => $this->qty,
            'capital_price' => preg_replace("/[^0-9]/", "", $this->capital_price),
            'sell_price' => preg_replace("/[^0-9]/", "", $this->sell_price),
            'unit' => $this->unit,
            'description' => $this->description,
            'featuredImage' => $imageFeaturedName
        ]);
        
        foreach ($this->image as $key => $gbr) {
            //$this->image[$key] = $gbr->store('images','public');
            $imageName= md5($gbr.microtime().'.'.$gbr->extension());
            Storage::putFileAs(
                'public/images',
                $this->image[$key],
                $imageName,
            );
            ImageProductModel::create([
                'product_id' => $product->id,
                'image' => $imageName
            ]);
        }

        

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
            'message' => 'Produk Baru berhasil dibuat!', 
            'text' => 'Data ditambahkan ke database.'
        ]);
    }

    public function detail($id){
        $this->detailProduk = ProductModel::join('category', 'category.id', '=', 'product.category_id')
                            ->join('supplier', 'supplier.id','=','product.supplier_id')
                            ->where('product.id', $id)
                            ->get(['product.*', 'category.name as cat_name', 'supplier.company_name as company_name','supplier.contact_name as contact_name']);

        $this->detailGambarProduk = ImageProductModel::where('product_id',$id)->get('image_product.image as detailImage');
    }

    public function edit($id){
        $pro = ProductModel::where('id',$id)->first();
        $this->idPro = $id;
        $this->category_id = $pro->category_id;
        $this->supplier_id = $pro->supplier_id;
        $this->name = $pro->name;
        $this->type = $pro->type;
        $this->qty = $pro->qty;
        $this->capital_price = "Rp. " . number_format($pro->capital_price,0,',','.');
        $this->sell_price = "Rp. " . number_format($pro->sell_price,0,',','.');
        $this->unit = $pro->unit;
        $this->description = $pro->description;
        $this->dispatchBrowserEvent('tampilData', ['idKat' => $pro->category_id, 'idSup' => $pro->supplier_id]);
    }

    public function update(){
        // $this->validate([
        //     'category_id' => 'required',
        //     'supplier_id' => 'required',
        //     'name' => 'required',
        //     'type' => 'required',
        //     'qty' => 'required',
        //     'capital_price' => 'required',
        //     'sell_price' => 'required',
        //     'unit' => 'required',
        // ]);

        if($this->idPro){
            $pro = ProductModel::find($this->idPro);
            $pro->update([
                'category_id' => $this->category_id,
                'supplier_id' => $this->supplier_id,
                'name' => $this->name,
                'type' => $this->type,
                'qty' => $this->qty,
                'capital_price' => preg_replace("/[^0-9]/", "", $this->capital_price),
                'sell_price' => preg_replace("/[^0-9]/", "", $this->sell_price),
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
                'message' => 'Produk berhasil diubah!', 
                'text' => 'Data pada database diubah.'
            ]);
        }
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
            ProductModel::where('id',$id)->delete();
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Produk berhasil dihapus!', 
                'text' => 'Data pada database dihapus.'
            ]);
        }
    }

    // public function detilProdukGambar($id){
    //     $this->detailProduk = ProductModel::join('category', 'category.id', '=', 'product.category_id')
    //                         ->join('supplier', 'supplier.id','=','product.supplier_id')
    //                         ->where('product.id', $id)
    //                         ->get(['product.*', 'category.name as cat_name', 'supplier.company_name as company_name','supplier.contact_name as contact_name']);
    // }
}
