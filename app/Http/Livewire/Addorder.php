<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Http\Request;

use App\Models\TermPayment as TermPaymentModel;
use App\Models\Customer as CustomerModel;
use App\Models\Product as ProductModel;
use App\Models\Order as OrderModel;
use App\Models\DetailOrder as DetailOrderModel;

class Addorder extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete','prosesOrder'];
    public $search;
    public $searchcus;
    public $searchpro;

    // public $date_order, $sent_date, $customer, $term_payment, $address, $descriptionOrder;
    public $total =0;
    public $day_term, $descriptionterm, $listTermPayment=[];

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $cartUser = session()->get('cartuser',[]);
        
        if(empty($cartUser))
        {
            $cartUser[auth()->id()] = [
                "idUser" => auth()->id(),
                "date_order" => "",
                "sent_date" => "",
                "idCustomer" => "",
                "nameCustomer" => "",
                "tlpCustomer" => "",
                "term_payment" => "",
                "address" => "",
                "descriptionOrder" => "",
                "total" => ""
            ];
            session()->put('cartuser', $cartUser);
        }
        

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
        $cartUser = session()->get('cartuser',[]);
        $cartUser[auth()->id()]["idCustomer"] = $cust->id;
        $cartUser[auth()->id()]["address"] = $cust->address;
        $cartUser[auth()->id()]["nameCustomer"] = $cust->first_name." ".$cust->last_name;
        $cartUser[auth()->id()]["tlpCustomer"] = $cust->phone1;
        session()->put('cartuser', $cartUser);
        
    }

    public function setSessionOrder($dateOrder, $sentDate, $idCustomer, $termPayment, $address, $descriptionOrder){
        $cartUser = session()->get('cartuser',[]);
        // $cartUser[auth()->id()] = [
        //     "idUser" => auth()->id(),
        //     "date_order" => $dateOrder,
        //     "sent_date" => $sentDate,
        //     "idCustomer" => $cust->id,
        //     "nameCustomer" => $cust->first_name." ".$cust->last_name,
        //     "tlpCustomer" => $cust->phone1,
        //     "term_payment" => $termPayment,
        //     "address" => $cust->address,
        //     "descriptionOrder" => $descriptionOrder
        // ];
        // session()->put('cartuser', $cartUser);
        if($dateOrder!=""){
            $cartUser[auth()->id()]['date_order'] = $dateOrder;
            session()->put('cartuser', $cartUser);
        }
        if($sentDate!=""){
            $cartUser[auth()->id()]['sent_date'] = $sentDate;
            session()->put('cartuser', $cartUser);
        }
        if($termPayment!=""){
            $cartUser[auth()->id()]['term_payment'] = $termPayment;
            session()->put('cartuser', $cartUser);
        }
        if($address!=""){
            $cartUser[auth()->id()]['address'] = $address;
            session()->put('cartuser', $cartUser);
        }
        if($descriptionOrder!=""){
            $cartUser[auth()->id()]['descriptionOrder'] = $descriptionOrder;
            session()->put('cartuser', $cartUser);
        }
        if($idCustomer!=""){
            $cust = CustomerModel::where('id',$idCustomer)->first();
            $cartUser[auth()->id()]['idCustomer'] =  $cust->id;
            $cartUser[auth()->id()]['nameCustomer'] = $cust->first_name." ".$cust->last_name;
            $cartUser[auth()->id()]['tlpCustomer'] = $cust->phone1;
            $cartUser[auth()->id()]['address'] = $cust->address;
            session()->put('cartuser', $cartUser);
        }
        //dd($cartUser);
    }

    public function checkInput(){
        $cartUser = session()->get('cartuser',[]);
        //dd($cartUser);
        // $this->validate([
        //     'date_order'=>'required',
        //     'sent_date'=>'required',
        //     'customer'=>'required',
        //     'term_payment'=>'required',
        //     'address'=>'required',
        //     'descriptionOrder'=>'required',
        // ]);
        if($cartUser[auth()->id()]['date_order']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pesanan belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['idCustomer']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Pelanggan belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['term_payment']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Jangka Waktu Pembayaran belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['address']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Alamat Pengiriman belum ada !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['sent_date']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pengiriman belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else{
            $this->dispatchBrowserEvent('show-modal-produk');
        }
        
        
         
    }

    public function assignPro($id){

        $pro = ProductModel::where('id',$id)->first();
        
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
                    "desc" => ""
                ];
            
            }
        }
        session()->put('cart', $cart);
        
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

    public function discountDesc($id, $disc){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            // if($this->discount[$id]!=""){
            //     $cart[$id]["disc"] = $this->discount[$id] ;
            //     session()->put('cart', $cart);
            // }
            if($disc!=""){
                $cart[$id]["disc"] = $disc ;
                session()->put('cart', $cart);
            }
        }
    }

    public function descriptionOr($id, $desc){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($desc!=""){
                $cart[$id]["desc"] = $desc ;
                session()->put('cart', $cart);
            }
        }
    }

    public function cekSaveOrder(){
        $cartUser = session()->get('cartuser',[]);
        $cart = session()->get('cart',[]);
        if($cartUser[auth()->id()]['date_order']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pesanan belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['idCustomer']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Pelanggan belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['term_payment']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Jangka Waktu Pembayaran belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['address']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Alamat Pengiriman belum ada !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if($cartUser[auth()->id()]['sent_date']==""){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pengiriman belum dipilih !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else if(empty($cart)){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Produk Pesanan belum ada !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else{
            $this->dispatchBrowserEvent('swal:confirmOrder', [
                'type' => 'warning',  
                'message' => 'Apakah anda yakin akan menyimpan pesanan ini ?', 
                'text' => 'Pastikan semua data sudah terisi dengan benar',
            ]);
        }

    }

    public function prosesOrder(){
        $cartUser = session()->get('cartuser',[]);
        $cart = session()->get('cart',[]);

        // $product=OrderModel::create([
        //     'invoice_number ' => $this->category_id,
        //     'customer_id' => $this->supplier_id,
        //     'date_order' => $this->name,
        //     'term_payment' => $this->type,
        //     'desc_order' => $this->qty,
        //     'sent_date' => preg_replace("/[^0-9]/", "", $this->capital_price),
        //     'sent_address' => preg_replace("/[^0-9]/", "", $this->sell_price),
        //     'transaction_status' => $this->unit,
        //     'grand_total' => $this->description,
        // ]);
    }

}
