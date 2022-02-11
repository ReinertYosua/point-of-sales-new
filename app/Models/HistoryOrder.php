<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryOrder extends Model
{
    use HasFactory;

    protected $table = 'history_order';
    protected $guarded = [];

    public function historyDetailOrder(){
        return $this->hasMany(HistoryDetailOrder::class, 'invoice_number', 'invoice_number');
    }

    public function customer(){
        return $this->belongsTo(Customer::class);
    }

    public function termPayment(){
        return $this->belongsTo(TermPayment::class);
    }
}
