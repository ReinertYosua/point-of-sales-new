<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <h3 class="font-weight-bold mb-3">Daftar Pesanan</h3>
                @if (session()->has('message'))
                    <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                    {{ session('message') }}
                    </div>
                @endif
                <a href="{{ url('/tambahpesanan') }}" class="btn btn-primary mb-3"><i class="fas fa-plus"> Tambah</i></a>
                <!-- <button class="btn btn-primary mb-3" wire:click="addOrder"><i class="fas fa-plus"> Tambah</i></button> -->
                <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Pesanan"></div>
                <!-- <div class="container-fluid"> -->
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 15%">Invoice</th>
                            <th style="width: 15%">Pelanggan</th>
                            <th style="width: 10%">Tanggal Pesan</th>
                            <th style="width: 10%">Total Pesanan Barang</th>
                            <th style="width: 10%">Tgl Jatuh Tempo bayar</th>
                            <th style="width: 15%">Total Transaksi</th>
                            <th style="width: 5%">Status Pesanan</th>
                            <th style="width: 10%">Tindakan</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse($ord as $index=>$order)
                        <tr>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{$ord->firstItem() + $index}}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{$order->invoice_number}}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{$order->firstname.' '.$order->lastname}}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{date('Y-M-d', strtotime($order->date_order)) }}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{$order->total_barang}}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{date('Y-M-d', strtotime("+$order->day days", strtotime($order->date_order)))}}</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">@currency($order->grand_total)</td>
                            <td wire:click="detail({{ $order->id }})" style="cursor:pointer" title="Klik untuk lihat detail">{{ucwords($order->transaction_status)}}</td>
                            <td>
                                <button wire:click="edit({{ $order->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                <button wire:click="deleteConfirm({{ $order->id }})" class="btn btn-danger btn-sm">Hapus</button>
                            </td>
                        </tr>
                    @empty
                        <td colspan="8"><h6 class="text-center">Pesanan Kosong</h6></td>
                    @endforelse
                    </tbody>
                </table>
                <p class="text-right font-weight-bold">Total data Pesanan: {{$ord->total()}}</p>
                <!-- </div> -->
                <div style="display:flex; justify-content:center">
                    {{$ord->links()}}
                </div>
            </div>
        </div>
    </div>
</div>