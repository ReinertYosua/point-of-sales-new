<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'order';
    protected $guarded = [];

    public function detailOrder(){
        return $this->hasMany(DetailOrder::class, 'invoice_number', 'invoice_number');
    }

    public function customer(){
        return $this->belongsTo(Customer::class);
    }
}
