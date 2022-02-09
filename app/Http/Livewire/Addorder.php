<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

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
    public $GrandTotal=0;
    public $day_term, $descriptionterm, $listTermPayment=[];

    public function updatingSearch(){
        $this->resetPage();
    }

    // public function updatingSearchInput()
    // {
    //     $this->gotoPage(1);
    // }

    public function render()
    {
        $cartUser = session()->get('cartuser',[]);
        
        if(empty($cartUser))
        {
            $cartUser[auth()->id()] = [
                "idUser" => auth()->id(),
                "invoice_number" => "",
                "date_order" => "",
                "sent_date" => "",
                "idCustomer" => "",
                "nameCustomer" => "",
                "tlpCustomer" => "",
                "term_payment" => "",
                "address" => "",
                "descriptionOrder" => "",
                "tax" => 0,
                "grandTotal" => ""
            ];
            session()->put('cartuser', $cartUser);
        }
        
    
        // $termpay = TermPaymentModel::where('day','like','%'.$this->search.'%')
        //             ->orWhere('description','like','%'.$this->search.'%')
        //             ->orderBy('created_at', 'DESC')->paginate(3,['*'],'termPage');

        $termpay = TermPaymentModel::where('day','like','%'.$this->search.'%')
                    ->orWhere('description','like','%'.$this->search.'%')
                    ->orderBy('created_at', 'DESC')->paginate(3);
        
        //\DB::enableQueryLog();
        $listcustomer = CustomerModel::where('first_name','like','%'.$this->searchcus.'%')
                        ->orWhere('last_name','like','%'.$this->searchcus.'%')
                        ->orWhere('address','like','%'.$this->searchcus.'%')
                        ->orWhere('phone1','like','%'.$this->searchcus.'%')
                        ->orderBy('first_name', 'asc')
                        ->get();
        
        // $listproduct = ProductModel::where('name','like','%'.$this->searchpro.'%')
        //                 ->orWhere('type','like','%'.$this->searchpro.'%')
        //                 ->orWhere('unit','like','%'.$this->searchpro.'%')
        //                 ->orderBy('name', 'ASC')->get();
        
        \DB::statement("SET SQL_MODE=''");
        $listproduct = DB::select("SELECT DISTINCT detail_order.product_id as DOProduct, sum(detail_order.quantity) as DOQty, product.*, product.qty-sum(detail_order.quantity) as sisaStok FROM `product` 
                            left JOIN detail_order on detail_order.product_id = product.id 
                            WHERE product.name LIKE '%$this->searchpro%' OR product.type LIKE '%$this->searchpro%' OR product.unit LIKE '%$this->searchpro%' 
                            GROUP BY product.id ORDER BY product.name ASC");

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
        }else if($cartUser[auth()->id()]['sent_date']<$cartUser[auth()->id()]['date_order']){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pengiriman tidak boleh lebih lama dari Tanggal Pesanan !', 
                'text' => 'Tidak bisa melanjutkan proses.'
            ]);
        }else{
            $this->dispatchBrowserEvent('show-modal-produk');
        }
        
        
         
    }

    public function cekStok($id){
        $sisaStok = 0;
        $qtyactual = 0;
        $qtyOrder = 0;//total semua quantity yg sudah di order
        \DB::statement("SET SQL_MODE=''");
        $stok = DB::select("SELECT DISTINCT detail_order.product_id as DOProduct, sum(detail_order.quantity) as DOQty, product.id, product.qty , product.qty-sum(detail_order.quantity) as sisaStok FROM `product` 
                left JOIN detail_order on detail_order.product_id = product.id 
                WHERE product.id = $id GROUP BY product.id ORDER BY product.id ASC;");
        
        if($stok[0]->sisaStok == ""){
            $sisaStok = $stok[0]->qty;
        }else{
            $sisaStok = $stok[0]->sisaStok;
        }
        $qtyactual = $stok[0]->qty;
        $qtyOrder = $stok[0]->DOQty;
        return [$sisaStok, $qtyactual, $qtyOrder];
    }

    public function assignPro($id){

        $pro = ProductModel::where('id',$id)->first();
        $selisihStok = 0;
        list($sisaStok, $qtyactual, $qtyOrder) = $this->cekStok($id);
        $cart = session()->get('cart',[]);
        if($sisaStok == 0)
        {
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Stok Produk tidak mencukupi !', 
                'text' => 'Kuantitas tidak bisa ditambah.'
            ]);
        }else{
            if(isset($cart[$id])) {
                $selisihStok = ($cart[$id]["qty"]+1) - $cart[$id]["qty_s"];
                if($selisihStok>$sisaStok){
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
                    "qty_s" => 0,
                    "disc" => 0,
                    "price" => $pro->sell_price,
                    "desc" => "",
                    "subtotal" => 0
                ];
            
            }
        }
        session()->put('cart', $cart);
        
    }

    public function increaseItem($id){
        //$pro = ProductModel::where('id',$id)->first();
        $selisihStok = 0;
        list($sisaStok, $qtyactual, $qtyOrder) = $this->cekStok($id);
        
        $cart = session()->get('cart',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            $selisihStok = ($cart[$id]["qty"]+1) - $cart[$id]["qty_s"];
            if($selisihStok>$sisaStok){
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
                if($disc<0){
                    $this->dispatchBrowserEvent('swal:modal', [
                        'type' => 'warning',  
                        'message' => 'Diskon tidak boleh minus !', 
                        'text' => 'Tidak bisa melanjutkan proses.'
                    ]);
                    $cart[$id]["disc"] = 0 ;
                    session()->put('cartedit', $cart);
                }else{
                    $cart[$id]["disc"] = $disc ;
                    session()->put('cart', $cart);
                }
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
        }else if($cartUser[auth()->id()]['sent_date']<$cartUser[auth()->id()]['date_order']){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Tanggal Pengiriman tidak boleh lebih lama dari Tanggal Pesanan !', 
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

    public function invoiceNumber()
    {
        $latest = OrderModel::latest()->first();
        $dateYear = Carbon::now()->format('Y');
        $dateMonth = Carbon::now()->format('m');

        if (! $latest) {
            return 'INV'.'/'.$dateMonth.'/'.$dateYear.'/00001';
        }
        
        $string = preg_replace("/[^0-9\.]/", '', substr($latest->invoice_number,-5));
        //dd($string);
        return 'INV'.'/'.$dateMonth.'/'.$dateYear.'/'.sprintf('%05d', $string+1);
    }

    // public function setTax($pajak){
    //     $cartUser = session()->get('cartuser',[]);
    //     $cartUser[auth()->id()]['tax'] = $pajak;
    //     dd( $cartUser[auth()->id()]['tax']);
    // }

    public function getTotalPrice(){
        $cartUser = session()->get('cartuser',[]);
        $cart = session()->get('cart',[]);
        if(!empty($cart)){
            $totalGrand=0;
            foreach(session('cart') as $id => $details){
                //dump($details['id']);
                $cart[$id]["subtotal"] = rounding(($details['price'] * $details['qty'])-rounding((($details['price'] * $details['qty'])* ($details['disc']/100))));
                session()->put('cart', $cart);
                $totalGrand+=$cart[$id]["subtotal"];
            }
            $cartUser[auth()->id()]['grandTotal']=$totalGrand;
            $cartUser[auth()->id()]['invoice_number'] = $this->invoiceNumber();
            session()->put('cartuser', $cartUser);
        }
    }

    public function prosesOrder(){
        $this->getTotalPrice();
        $cartUser = session()->get('cartuser',[]);
        $cart = session()->get('cart',[]);

        //dd($cartUser[auth()->id()]['grandTotal']);
        $orderSave=OrderModel::create([
            'invoice_number' => $cartUser[auth()->id()]['invoice_number'],
            'customer_id' => $cartUser[auth()->id()]['idCustomer'],
            'date_order' => $cartUser[auth()->id()]['date_order'],
            'term_payment' => $cartUser[auth()->id()]['term_payment'],
            'desc_order' => $cartUser[auth()->id()]['descriptionOrder'],
            'sent_date' => $cartUser[auth()->id()]['sent_date'],
            'sent_address' => $cartUser[auth()->id()]['address'],
            'transaction_status' => "proses",//proses/selesai
            'tax' => 0,
            'grand_total' => $cartUser[auth()->id()]['grandTotal'],
        ]);
        if($orderSave){
            if(!empty($cart)){
                foreach(session('cart') as $id => $details){
                    //dump($details['id']);
                    DetailOrderModel::create([
                        'invoice_number' => $cartUser[auth()->id()]['invoice_number'],
                        'product_id' => $details['id'],
                        'quantity' => $details['qty'],
                        'discount' => $details['disc'],
                        'total_price' => $details['subtotal'],
                        'description' => $details['desc'],
                    ]);
                }
            }
        }
        session()->forget('cartuser',[]);
        session()->forget('cart',[]);
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Pesanan Baru berhasil dibuat!', 
            'text' => 'Data Pesanan ditambahkan ke database.'
        ]);

        redirect()->route('order');
    }

}
