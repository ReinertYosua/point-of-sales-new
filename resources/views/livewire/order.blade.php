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
                <a href="{{ route('tambahpesanan') }}" class="btn btn-primary mb-3"><i class="fas fa-plus"> Tambah</i></a>
                <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Pesanan"></div>
                <!-- <div class="container-fluid"> -->
                <table class="table">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 20%">Invoice</th>
                            <th style="width: 15%">Pelanggan</th>
                            <th style="width: 15%">Tanggal Pesan</th>
                            <th style="width: 30%">Total Transaksi</th>
                            <th style="width: 15%">Tindakan</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse($ord as $index=>$order)
                        <tr>
                            <td>{{$ord->firstItem() + $index}}</td>
                            <td>{{$order->invoice_number}}</td>
                            <td>{{$order->customer_id}}</td>
                            <td>{{$order->date_order}}</td>
                            <td>{{$order->grand_total}}</td>
                            <td>
                                <button data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $order->id }})" class="btn btn-success btn-sm">Detil</button>
                                <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $order->id }})" class="btn btn-primary btn-sm">Ubah</button>
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
