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


class DetailOrder extends Component
{
    public $GrandTotal=0;
    public $day_term, $descriptionterm, $listTermPayment=[];
    public function render()
    {
        $idorder_master = session()->get('IDOrder');
        
        if($idorder_master)
        {
            $order = OrderModel::select('order.*', 'customer.first_name as firstname', 'customer.last_name as lastname', 'customer.address as address', 'customer.phone1 as phone', 'term_payment.description as term_payment')
                ->join('customer', 'customer.id','=','order.customer_id')
                ->join('term_payment', 'term_payment.id','=','order.term_payment')
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
}
