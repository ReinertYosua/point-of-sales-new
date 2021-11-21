<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Http\Request;

use App\Models\TermPayment as TermPaymentModel;
use App\Models\Customer as CustomerModel;
use App\Models\Product as ProductModel;

class Addorder extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete','descriptionTrans'];
    public $search;
    public $searchcus;
    public $searchpro;

    public $date_order, $sent_date, $customer, $term_payment, $address, $descriptionOrder;

    public $product, $sellPrice, $qty, $discount, $total, $descriptionTrans;

    public $day_term, $descriptionterm, $listTermPayment=[];

    public $inputs = [];
    public $i = 0;


    public function updatingSearch(){
        $this->resetPage();
    }

    public function descriptionTrans(){
            dd("asdasd");
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
        $listproduct = ProductModel::where('name','like','%'.$this->searchpro.'%')
                        ->orWhere('type','like','%'.$this->searchpro.'%')
                        ->orWhere('unit','like','%'.$this->searchpro.'%')
                        ->paginate(10);

        // if(!empty($this->product)){
        //     foreach ($this->product as $key => $value) {
        //         $this->total[$key] = (int)$this->sellPrice[$key] * (int)$this->qty[$key];
        //         //Account::create(['account' => $this->account[$key], 'username' => $this->username[$key]]);
        //     }
        // }
        // if(session('cart')){
        //     foreach(session('cart') as $id => $details){
        //         $this->total =  $this->sellPrice * $this->qty;
        //     }
        // }
        
        

        $lstTermPayment = TermPaymentModel::all(); 
        return view('livewire.addorder',['termpay'=>$termpay, 'listTerm' => $lstTermPayment, 'listCus' => $listcustomer, 'listPro' => $listproduct]);
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

    public function assignPro($id, $i){

        $pro = ProductModel::where('id',$id)->first();
        // $this->product[$this->i] = $pro->name;
        // $this->sellPrice[$this->i] = "Rp. " . number_format($pro->sell_price,0,',','.');
        // $this->qty[$this->i] = 1;
        // $this->total[$this->i] = $pro->sell_price * $this->qty[$this->i];
        
        
        $cart = session()->get('cart',[]);
        if($pro->qty == 0)
        {
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Stok Produk tidak mencukupi !', 
                'text' => 'Kuantitas tidak bisa ditambah.'
            ]);
        }else{
            if(isset($cart[$id])) {
                if($cart[$id]["qty"]==$pro->qty){
                    $this->dispatchBrowserEvent('swal:modal', [
                        'type' => 'warning',  
                        'message' => 'Stok Produk tidak mencukupi !', 
                        'text' => 'Kuantitas tidak bisa ditambah.'
                    ]);
                }else{
                    $cart[$id]["qty"]++;
                }
            } else {
                $cart[$id] = [
                    "id" => $pro->id,
                    "product" => $pro->name,
                    "qty" => 1,
                    "disc" => 0,
                    "price" => $pro->sell_price,
                ];
            
            }
        }
        session()->put('cart', $cart);
        if(isset($cart[$id])){
            $cart = session()->get('cart',[]);
            $this->discount[$id] = $cart[$id]["disc"];
        }
        
        
    }

    public function increaseItem($id){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($cart[$id]["qty"]==$pro->qty){
                $this->dispatchBrowserEvent('swal:modal', [
                    'type' => 'warning',  
                    'message' => 'Stok Produk tidak mencukupi !', 
                    'text' => 'Kuantitas tidak bisa ditambah.'
                ]);
            }else{
                $cart[$id]["qty"]++;
                session()->put('cart', $cart);
            }
        }
    }

    public function decreaseItem($id){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($cart[$id]["qty"] == 1){
                foreach ($cart as $index => $product) {
                    if ($product['id'] == $id) {
                       unset($cart[$index]);
                     }
                  }
                  session(['cart' => $cart]);
            }else{
                $cart[$id]["qty"]--;
                session()->put('cart', $cart);
            }
            
        }
    }

    public function removeItem($id){
         $cart = session()->get('cart',[]);
        
        foreach ($cart as $index => $product) {
            if ($product['id'] == $id) {
               unset($cart[$index]);
             }
          }
          session(['cart' => $cart]);
        
    }

    public function discountDesc($id){
        //dd($this->discount[$id]);
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($this->discount[$id]!=""){
                $cart[$id]["disc"] = $this->discount[$id] ;
                session()->put('cart', $cart);
            }
        }
    }

}
