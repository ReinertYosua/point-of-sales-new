<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryDetailOrder extends Model
{
    use HasFactory;

    protected $table = 'history_detail_order';
    protected $guarded = [];

    public function product(){
        return $this->belongsTo(Product::class);
    }

    public function historyOrder(){
        return $this->belongsTo(Order::class);
    }
}
