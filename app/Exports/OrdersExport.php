<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Models\Order as OrderModel;
use App\Models\DetailOrder as DetailOrderModel;
//use App\resources\views\print;

class OrdersExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return OrderModel::all();
        // $order = OrderModel::all();
        // return view('/print.print-order',['dataorder'=>$order]);
    }
}
