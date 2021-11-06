<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TermPayment extends Model
{
    use HasFactory;

    protected $table = 'term_payment';
    protected $guarded = [];
}
