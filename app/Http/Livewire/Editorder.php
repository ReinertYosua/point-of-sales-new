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
class Editorder extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    protected $listeners = ['delete','prosesUpdateOrder'];
    public $search;
    public $searchcus;
    public $searchpro;

    public $GrandTotal=0;
    public $day_term, $descriptionterm, $listTermPayment=[];

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $idorder_master = session()->get('IDOrder');
        
        if($idorder_master)
        {
            $order = OrderModel::select('order.*', 'customer.first_name as firstname', 'customer.last_name as lastname', 'customer.address as address', 'customer.phone1 as phone')
                ->join('customer', 'customer.id','=','order.customer_id')
                ->where('order.id',$idorder_master)->first();
            //dd($order);

            $cartUser[auth()->id()] = [
                "idUser" => auth()->id(),
                "idOrder" => $order->id,
                "invoice_number" => $order->invoice_number,
                "date_order" => $order->date_order,
                "sent_date" => $order->sent_date,
                "idCustomer" => $order->customer_id,
                "nameCustomer" => $order->firstname." ".$order->lastname,
                "tlpCustomer" => $order->phone,
                "term_payment" => $order->term_payment,
                "address" => $order->sent_address,
                "descriptionOrder" => $order->desc_order,
                "grandTotal" => $order->grand_total
            ];

            $detOrder = DetailOrderModel::select('detail_order.*', 'product.id as product_id', 'product.name as product_name', 'product.sell_price as product_price')
                        ->join('product', 'product.id','=', 'detail_order.product_id')
                        ->where('invoice_number',$order->invoice_number)->get();
            foreach($detOrder as $id => $details){
                //dump($details['id']);
                $cart[$details['product_id']] = [
                    "id_detail" => $details['id'],
                    "id" => $details['product_id'],
                    "product" => $details['product_name'],
                    "qty" => $details['quantity'],
                    "disc" => $details['discount'],
                    "price" => $details['product_price'],
                    "desc" => $details['description'],
                    "subtotal" => $details['total_price']
                ];
                session()->put('cartedit', $cart);
            }
            session()->put('cartedituser', $cartUser);
            session()->forget('IDOrder');
        }
        //dd(session()->get('IDOrder'));

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
        //dd(count($listproduct));

        $lstTermPayment = TermPaymentModel::all(); 
        
        return view('livewire.editorder', ['termpay'=>$termpay, 'listTerm' => $lstTermPayment, 'listCus' => $listcustomer, 'listPro' => $listproduct]);
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
        $cartUser = session()->get('cartedituser',[]);
        $cartUser[auth()->id()]["idCustomer"] = $cust->id;
        $cartUser[auth()->id()]["address"] = $cust->address;
        $cartUser[auth()->id()]["nameCustomer"] = $cust->first_name." ".$cust->last_name;
        $cartUser[auth()->id()]["tlpCustomer"] = $cust->phone1;
        session()->put('cartedituser', $cartUser);
        
    }

    public function setSessionOrder($dateOrder, $sentDate, $idCustomer, $termPayment, $address, $descriptionOrder){
        $cartUser = session()->get('cartedituser',[]);
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
        // session()->put('cartedituser', $cartUser);
        if($dateOrder!=""){
            $cartUser[auth()->id()]['date_order'] = $dateOrder;
            session()->put('cartedituser', $cartUser);
        }
        if($sentDate!=""){
            $cartUser[auth()->id()]['sent_date'] = $sentDate;
            session()->put('cartedituser', $cartUser);
        }
        if($termPayment!=""){
            $cartUser[auth()->id()]['term_payment'] = $termPayment;
            session()->put('cartedituser', $cartUser);
        }
        if($address!=""){
            $cartUser[auth()->id()]['address'] = $address;
            session()->put('cartedituser', $cartUser);
        }
        if($descriptionOrder!=""){
            $cartUser[auth()->id()]['descriptionOrder'] = $descriptionOrder;
            session()->put('cartedituser', $cartUser);
        }
        if($idCustomer!=""){
            $cust = CustomerModel::where('id',$idCustomer)->first();
            $cartUser[auth()->id()]['idCustomer'] =  $cust->id;
            $cartUser[auth()->id()]['nameCustomer'] = $cust->first_name." ".$cust->last_name;
            $cartUser[auth()->id()]['tlpCustomer'] = $cust->phone1;
            $cartUser[auth()->id()]['address'] = $cust->address;
            session()->put('cartedituser', $cartUser);
        }
        //dd($cartUser);
    }

    public function checkInput(){
        $cartUser = session()->get('cartedituser',[]);
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

    public function assignPro($id){

        $pro = ProductModel::where('id',$id)->first();
        
        $cart = session()->get('cartedit',[]);
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
                    "desc" => "",
                    "subtotal" => 0
                ];
            
            }
        }
        session()->put('cartedit', $cart);
        
    }

    public function increaseItem($id){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cartedit',[]);
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
                session()->put('cartedit', $cart);
            }
        }
    }

    public function decreaseItem($id){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cartedit',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($cart[$id]["qty"] == 1){
                foreach ($cart as $index => $product) {
                    if ($product['id'] == $id) {
                       unset($cart[$index]);
                     }
                  }
                  session(['cartedit' => $cart]);
            }else{
                $cart[$id]["qty"]--;
                session()->put('cartedit', $cart);
            }
            
        }
    }

    public function removeItem($id){
         $cart = session()->get('cartedit',[]);
        
        foreach ($cart as $index => $product) {
            if ($product['id'] == $id) {
               unset($cart[$index]);
             }
          }
          session(['cartedit' => $cart]);
        
    }

    public function discountDesc($id, $disc){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cartedit',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            // if($this->discount[$id]!=""){
            //     $cart[$id]["disc"] = $this->discount[$id] ;
            //     session()->put('cartedit', $cart);
            // }
            if($disc!=""){
                $cart[$id]["disc"] = $disc ;
                session()->put('cartedit', $cart);
            }
        }
    }

    public function descriptionOr($id, $desc){
        $pro = ProductModel::where('id',$id)->first();
        $cart = session()->get('cartedit',[]);
        $checkItem = array_key_exists($id,$cart);
        if($checkItem){
            if($desc!=""){
                $cart[$id]["desc"] = $desc ;
                session()->put('cartedit', $cart);
            }
        }
    }

    public function cekSaveOrder(){
        $cartUser = session()->get('cartedituser',[]);
        $cart = session()->get('cartedit',[]);
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
                'message' => 'Apakah anda yakin ingin mengubah pesanan ini ?', 
                'text' => 'Pastikan semua data sudah terisi dengan benar',
            ]);
        }

    }

    // public function invoiceNumber()
    // {
    //     $latest = OrderModel::latest()->first();
    //     $dateYear = Carbon::now()->format('Y');
    //     $dateMonth = Carbon::now()->format('m');

    //     if (! $latest) {
    //         return 'INV'.'/'.$dateMonth.'/'.$dateYear.'/00001';
    //     }
        
    //     $string = preg_replace("/[^0-9\.]/", '', substr($latest->invoice_number,-5));
    //     //dd($string);
    //     return 'INV'.'/'.$dateMonth.'/'.$dateYear.'/'.sprintf('%05d', $string+1);
    // }

    public function getTotalPrice(){
        $cartUser = session()->get('cartedituser',[]);
        $cart = session()->get('cartedit',[]);
        if(!empty($cart)){
            $totalGrand=0;
            foreach(session('cartedit') as $id => $details){
                //dump($details['id']);
                $cart[$id]["subtotal"] = ($details['price'] * $details['qty'])-(($details['price'] * $details['qty'])* ($details['disc']/100));
                session()->put('cartedit', $cart);
                $totalGrand+=$cart[$id]["subtotal"];
            }
            $cartUser[auth()->id()]['grandTotal']=$totalGrand;
            //$cartUser[auth()->id()]['invoice_number'] = $this->invoiceNumber();
            session()->put('cartedituser', $cartUser);
        }
    }

    public function prosesUpdateOrder(){
        $this->getTotalPrice();
        $cartUser = session()->get('cartedituser',[]);
        $cart = session()->get('cartedit',[]);

        //dd($cartUser);
        if($cartUser[auth()->id()]['idOrder']){
            $updateOrder = OrderModel::find($cartUser[auth()->id()]['idOrder']);
            $updateOrder->update([
                'term_payment' => $cartUser[auth()->id()]['term_payment'],
                'desc_order' => $cartUser[auth()->id()]['descriptionOrder'],
                'sent_date' => $cartUser[auth()->id()]['sent_date'],
                'sent_address' => $cartUser[auth()->id()]['address'],
                'transaction_status' => "proses",//proses/selesai
                'grand_total' => $cartUser[auth()->id()]['grandTotal'],
            ]);
        }
        if($updateOrder){
            if(!empty($cart)){
                $deleteOldDetail = DetailOrderModel::where('invoice_number',$cartUser[auth()->id()]['invoice_number'])->delete();
                if($deleteOldDetail){   
                    foreach(session('cartedit') as $id => $details){
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
        }
        
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Pesanan berhasil diubah!', 
            'text' => 'Data Pesanan diubah dalam database.'
        ]);
        
        redirect()->route('order');
    }

}
