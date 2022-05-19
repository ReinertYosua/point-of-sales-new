<div class="container-fluid">
<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">  
                <div class="row">
                    <div class="col-md-4">
                        <h3 class="font-weight-bold mb-3">Detail Pesanan</h3>
                    </div>
                    <div class="col-md-4">
                        <h4 class="text-center">No : {{ session()->get('cartedituser')[auth()->id()]['invoice_number'] }}</h4>
                    </div>
                    <div class="col-md-4">
                        <a href="{{ url('/pesanan') }}" class="btn btn-link float-right">
                            <i class="fa fa-arrow-left"></i>&nbspKembali
                        </a>
                    </div>
                </div>
                <form>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Tanggal Pesanan</label>
                                <p class="h5">{{ date('Y-M-d', strtotime(session()->get('cartedituser')[auth()->id()]['date_order'])) }}</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Pelanggan</label>
                                <p class="h5">{{ session()->get('cartedituser')[auth()->id()]['nameCustomer'].' - '.session()->get('cartedituser')[auth()->id()]['tlpCustomer'] }}</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Tanggal Jatuh Tempo Pembayaran</label><span class="text-danger">*</span>
                                <p class="h5">{{ session()->get('cartedituser')[auth()->id()]['date_payment']  }}</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Alamat Pengiriman</label>
                                <p class="h5">{{ session()->get('cartedituser')[auth()->id()]['address'] }}</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Tanggal Kirim</label>
                                <p class="h5">{{ session()->get('cartedituser')[auth()->id()]['sent_date'] }}</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="text-primary">Deskripsi</label>
                                <p class="h5">{{ session()->get('cartedituser')[auth()->id()]['descriptionOrder'] }}</p>
                            </div>
                        </div>
                    </div>
                </form>
               
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-8">
                        <button class="btn btn-primary mb-3" wire:click.prevent="cetakPesanan({{ session()->get('cartedituser')[auth()->id()]['idOrder'] }})"><i class="fas fa-print"></i>&nbspCetak Pesanan</button>
                    </div>
                    @if( session()->get('cartedituser')[auth()->id()]['transactionStatus'] == 'proses' )
                    <div class="col-md-4">
                        <button class="float-right btn btn-success mb-3" wire:click.prevent="cekFinishOrder({{ session()->get('cartedituser')[auth()->id()]['idOrder'] }})"><i class="fas fa-check"></i>&nbsp Selesaikan Pesanan</button>
                    </div>
                    @endif
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 25%">Nama Produk</th>
                            <th style="width: 15%">Harga Jual</th>
                            <th style="width: 10%">Kuantiti</th>
                            <th style="width: 15%">Diskon</th>
                            <th style="width: 20%">Jumlah</th>
                            <th style="width: 15%">Deskripsi</th>
                        </tr>
                    </thead>
                    <tbody>
                    @if(session('cartedit'))
                        @foreach(session('cartedit') as $id => $details)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td><p class="h6">{{ $details['product'] }}</p></td>
                            <td> @currency($details['price']) </td>
                            <td>
                                <p class="h6">{{ $details['qty'] }}</p>
                            </td>
                            <td>
                                <p class="h6">{{ $details['disc'] }}%</p>
                            </td>
                            <td><p class="h6">@currency( $details['subtotal'] )</p></td>
                            <td><p class="h6">{{ $details['desc'] }}</p></td>
                            
                        </tr>
                        @endforeach
                        <tr>
                            <td colspan="5" class="text-center"><h5>Total</h5></td>
                            <td colspan="3"><h5>@currency( session()->get('cartedituser')[auth()->id()]['grandTotal'] )</h5></td>
                        </tr>
                    @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    window.addEventListener('swal:cekFinishOrder', event => { 
            swal({
            title: event.detail.message,
            text: event.detail.text,
            icon: event.detail.type,
            buttons: true,
            dangerMode: true,
            })
            .then((willDelete) => {
            if (willDelete) {
                window.livewire.emit('finishOrder', event.detail.id);
            }
            });
        });
</script>