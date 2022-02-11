<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

use App\Models\TermPayment as TermPaymentModel;
use App\Models\Customer as CustomerModel;
use App\Models\Product as ProductModel;
use App\Models\Order as OrderModel;
use App\Models\DetailOrder as DetailOrderModel;
use App\Models\HistoryOrder as HistoryOrderModel;
use App\Models\HistoryDetailOrder as HistoryDetailOrderModel;


class DetailOrder extends Component
{
    protected $listeners = ['finishOrder'];
    public $GrandTotal=0;
    public $day_term, $descriptionterm, $listTermPayment=[];
    public function render()
    {
        $idorder_master = session()->get('IDOrder');
        
        if($idorder_master)
        {
            $order = OrderModel::select('order.*', 'customer.first_name as firstname', 'customer.last_name as lastname', 'customer.address as address', 'customer.phone1 as phone', 'term_payment.description as term_payment', 'term_payment.day as date_payment')
                ->join('customer', 'customer.id','=','order.customer_id')
                ->join('term_payment', 'term_payment.id','=','order.term_payment')
                ->where('order.id',$idorder_master)->first();
            //dd($order);
            $datePayment = date('Y-M-d', strtotime("+$order->date_payment days", strtotime($order->date_order)));
            $cartUser[auth()->id()] = [
                "idUser" => auth()->id(),
                "idOrder" => $order->id,
                "invoice_number" => $order->invoice_number,
                "date_order" => $order->date_order,
                "sent_date" => $order->sent_date,
                "idCustomer" => $order->customer_id,
                "nameCustomer" => $order->firstname." ".$order->lastname,
                "tlpCustomer" => $order->phone,
                "date_payment" => $datePayment,
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
                    "qty_s" => $details['quantity'], //buat simpan quantiti juga untuk perhitungan stok dengan membandingkan qty sebelumnya
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
        return view('livewire.detailorder');
    }

    public function cekFinishOrder($id){
        $this->dispatchBrowserEvent('swal:cekFinishOrder', [
            'type' => 'warning',  
            'message' => 'Apakah anda yakin untuk menyelesaikan pesanan ini ?', 
            'text' => 'Jika pesanan diselesaikan akan mengurangi stok produk',
            'id' => $id,
        ]);
        
    }

    public function finishOrder($id){
        $idOrder = $id;
        $order = OrderModel::select('order.*', 'customer.first_name as firstname', 'customer.last_name as lastname', 'customer.address as address', 'customer.phone1 as phone', 'term_payment.description as term_payment', 'term_payment.day as date_payment', 'term_payment.id as id_termpayment')
                ->join('customer', 'customer.id','=','order.customer_id')
                ->join('term_payment', 'term_payment.id','=','order.term_payment')
                ->where('order.id',$id)->first();
        $detOrder = DetailOrderModel::select('detail_order.*', 'product.id as product_id', 'product.name as product_name', 'product.sell_price as product_price')
        ->join('product', 'product.id','=', 'detail_order.product_id')
        ->where('invoice_number',$order->invoice_number)->get();
        $err=0;
        //dump($details['id']);
        foreach($detOrder as $id => $details){
            $updateStokProduct = ProductModel::find($details['product_id']);
            if($updateStokProduct['qty']>0){
                $stokProduct = $updateStokProduct['qty'] - $details['quantity']; //kurangin stok
                $updateStokProduct->update([
                    'qty' => $stokProduct,
                ]);
            }else{
                $err++;
            }
        }
        if($err>0){
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'warning',  
                'message' => 'Ada Kesalahan pada Update Stok', 
                'text' => 'Pastikan Stok Product mencukupi dan tidak kosong !'
            ]);
        }else{
            $listOrder = HistoryOrderModel::create([
                'id_order' => $idOrder,
                'invoice_number' => $order->invoice_number,
                'customer_id' => $order->customer_id,
                'date_order' => $order->date_order,
                'term_payment' => $order->id_termpayment ,
                'desc_order' => $order->desc_order,
                'sent_date' => $order->sent_date,
                'sent_address' => $order->sent_address,
                'transaction_status' => "selesai",//proses/selesai
                'tax' => 0,
                'grand_total' => $order->grand_total,
            ]);
            if($listOrder){
                $err2 =0;
                foreach($detOrder as $id => $detailOrders){
                    $simpanHistoryDet = HistoryDetailOrderModel::create([
                        'invoice_number' => $order->invoice_number,
                        'product_id' => $detailOrders['product_id'],
                        'quantity' => $detailOrders['quantity'],
                        'discount' => $detailOrders['discount'],
                        'total_price' => $detailOrders['total_price'],
                        'description' => $detailOrders['description'],
                    ]);
                    if(!$simpanHistoryDet){
                        $err2++;
                    }
                }
                if($err2<=0){
                    
                    $deleteOrder = OrderModel::where('id',$idOrder)->delete();
                    if($deleteOrder){
                        $this->dispatchBrowserEvent('swal:modal', [
                            'type' => 'success',  
                            'message' => 'Pesanan berhasil diselesaikan!', 
                            'text' => 'Data stok diupdate.'
                        ]);
                        redirect()->route('order');
                    }
                }else{
                    $this->dispatchBrowserEvent('swal:modal', [
                        'type' => 'warning',  
                        'message' => 'Ada Kesalahan pada meyelesaikan pesanan', 
                        'text' => 'Tidak bisa menyelesaikan pesanan !'
                    ]);
                }
            }

           
            
        }
        
    }
}

// est 868436 : 6 - 3 = 3
// eos : 6 - 4 = 2
// ipsam : 7 -  3 = 4