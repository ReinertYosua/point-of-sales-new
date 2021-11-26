<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'order';
    protected $guarded = [];
    //protected $fillable = ['invoice_number', 'customer_id','date_order','term_payment','desc_order','sent_date','sent_address','transaction_status','grand_total'];

    public function detailOrder(){
        return $this->hasMany(DetailOrder::class, 'invoice_number', 'invoice_number');
    }

    public function customer(){
        return $this->belongsTo(Customer::class);
    }

    public function termPayment(){
        return $this->belongsTo(TermPayment::class);
    }
}
