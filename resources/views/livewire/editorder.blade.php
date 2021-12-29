<div class="container-fluid">
<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">  
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="font-weight-bold mb-3">Ubah Pesanan</h3>
                    </div>
                    <div class="col-md-6">
                        <h4 class="float-right">{{ session()->get('cartedituser')[auth()->id()]['invoice_number'] }}</h4>
                    </div>
                </div>
                <form>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Pesanan</label><span class="text-danger">*</span>
                                <input wire:change="setSessionOrder($event.target.value,'','','','','')" value="{{ session()->get('cartedituser')[auth()->id()]['date_order'] }}" type="date" id="orderDate" class="form-control" readonly/>
                                <!-- <div class="input-group date">
                                    <input type="text" class="form-control tanggal_order" onchange="this.dispatchEvent(new InputEvent('input'))"/>
                                    <span class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </span>
                                </div> -->
                                @error('date_order') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Pelanggan</label><span class="text-danger">*</span>
                                <input placeholder="Klik untuk memilih Pelanggan" readonly value="{{ (session()->get('cartedituser')[auth()->id()]['nameCustomer']!='')?session()->get('cartedituser')[auth()->id()]['nameCustomer'].' '.session()->get('cartedituser')[auth()->id()]['tlpCustomer']:'' }}" type="text" class="form-control" data-placement="top">
                                @error('customer') <small class="text-danger">{{$message}}</small>@enderror
                                
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Jangka Waktu Pembayaran</label><span class="text-danger">*</span>
                                <div class="input-group date">
                                <select wire:change="setSessionOrder('','','',$event.target.value,'','')" class="form-control" id="term_payment">
                                    <option value="">--Pilih--</option>
                                    @forelse($listTerm as $lst)
                                        <option value="{{ $lst->id }}" {{ ( $lst->id == session()->get('cartedituser')[auth()->id()]['term_payment']) ? 'selected' : '' }}>{{ $lst->day }} Hari</option>
                                    @empty
                                        <option value="">Data Tidak ada</option>
                                    @endforelse
                                </select>&nbsp
                                <button type="button" class="btn btn-success" style="cursor:pointer" data-toggle="modal" data-target="#exampleModal" data-placement="top" title="Tambah Jangka Waktu Pembayaran">
                                        <i class="fa fa-plus"></i>
                                </button>
                                </div>
                                @error('term_payment') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                    </div>
                    
                    <!-- 
                        No PO
                        tgl PO
                        Nama Supplier *opt
                        Pelanggan
                        Alamat pengirim
                        Tanggal Kirim
                        Jangka Waktu Pembayaran (30 hari setelah invoice, 60 hari setelah invoice)
                        https://www.acisindonesia.com/2020/05/13/cara-membuat-purchase-order/
                        http://www.pajak.net/po.htm
                     -->
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Alamat Pengiriman</label><span class="text-danger">*</span>
                                <textarea wire:change="setSessionOrder('','','','',$event.target.value,'')" name="" class="form-control">{{ session()->get('cartedituser')[auth()->id()]['address'] }}</textarea>
                                @error('address') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Kirim</label><span class="text-danger">*</span>
                                <input wire:change="setSessionOrder('',$event.target.value,'','','','')" value="{{ session()->get('cartedituser')[auth()->id()]['sent_date'] }}" type="date" id="sentDate" class="form-control"/>
                                <!-- <div class="input-group date">
                                    <input type="text" class="form-control tanggal_kirim" onchange="this.dispatchEvent(new InputEvent('input'))"/>
                                    <span class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </span>
                                </div> -->
                                @error('sent_date') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Deskripsi</label>
                                <textarea wire:change="setSessionOrder('','','','','',$event.target.value)" name="" class="form-control">{{ session()->get('cartedituser')[auth()->id()]['descriptionOrder'] }}</textarea>
                                @error('descriptionOrder') <small class="text-danger">{{$message}}</small>@enderror
                                <!-- <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following heading">
                                        </div>
                                    </div>
                                <h5>&nbspSelesai</h5>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <!-- <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-check float-right">
                                    <input class="form-check-input" type="checkbox" wire:click.prevent="confirmFinishOrder()" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Pesanan Selesai
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div> -->
                </form>
               
                <!-- Simpan Modal -->
                <div wire:ignore.self class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Tambah Jangka Waktu Pembayaran</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <h6 class="text-danger">*Wajib diisi</h6>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <form>
                                                <div class="form-group">
                                                    <label>Hari</label><span class="text-danger">*</span>
                                                    <input wire:model="day_term" type="number" class="form-control" placeholder="Waktu bayar dalam Hari">
                                                    @error('day_term') <small class="text-danger">{{$message}}</small>@enderror
                                                </div>
                                                <div class="form-group">
                                                    <label>Deskripsi</label><span class="text-danger">*</span>
                                                    <input type="text" wire:model="descriptionterm" name="" class="form-control"/>
                                                    @error('descriptionterm') <small class="text-danger">{{$message}}</small>@enderror
                                                </div>
                                                <button type="button" wire:click.prevent="saveTermPayment()" class="btn btn-primary close-modal">Simpan</button>
                                            </form>
                                        </div>
                                        <div class="col-sm-8">
                                        <input wire:model="search" type="text" class="form-control" placeholder="Cari Jangka Waktu Pembayaran">
                                            <table class="table">
                                            <thead>
                                                <tr>
                                                    <th style="width: 20%">Hari</th>
                                                    <th style="width: 15%">Deskripsi</th>
                                                    <th style="width: 15%">Tindakan</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse($termpay as $index=>$det)
                                                <tr>
                                                    <td>{{$det->day}}</td>
                                                    <td>{{substr($det->description,0,50)}}</td>
                                                    <td>
                                                        <button wire:click="deleteConfirm({{ $det->id }})" class="btn btn-danger btn-sm">Hapus</button>
                                                    </td>
                                                </tr>
                                                @empty
                                                <td colspan="8"><h6 class="text-center">Data Kosong</h6></td>
                                                @endforelse
                                            
                                            </tbody>
                                            </table>
                                            <div style="display:flex; justify-content:center">
                                                {{$termpay->links()}}
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    Tutup
                                    </button>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Customer -->
                <div wire:ignore.self class="modal fade" id="ModalCustomer" tabindex="-1" role="dialog" aria-labelledby="ModalCustomerLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title font-weight-bold mb-3" id="ModalCustomerLabel">Daftar Pelangan</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <p class="font-weight-bold">Silahkan klik pada baris untuk memilih pelanggan yang diinginkan</p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="text-right font-weight-bold">Total Pelanggan: {{ $listCus->count() }} </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                        <input wire:model="searchcus" type="text" class="form-control" placeholder="Cari Customer">
                                            <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th style="width: 30%">Nama</th>
                                                    <th style="width: 35%">Alamat</th>
                                                    <th style="width: 25%">Kontak</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse($listCus as $index=>$cus)
                                                <tr style="cursor:pointer" wire:click="assign({{ $cus->id }})" data-placement="top" title="Klik untuk Pilih Pelanggan" data-dismiss="modal">
                                                    <td>{{$cus->first_name." ".$cus->last_name}}</td>
                                                    <td>{{$cus->address}}</td>
                                                    <td>{{$cus->phone1}}</td>
                                                </tr>
                                                @empty
                                                <td colspan="8"><h6 class="text-center">Data Kosong</h6></td>
                                                @endforelse
                                            
                                            </tbody>
                                            </table>
                                            <div style="display:flex; justify-content:center">
                                                <!-- paginate link -->
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    Tutup
                                    </button>
                                </div>
                        </div>
                    </div>
                </div>
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
                        <button class="btn btn-primary mb-3" wire:click.prevent="checkInput()"><i class="fas fa-plus"></i>&nbspTambah Produk Pesanan</button>
                    </div>
                    <div class="col-md-4">
                        <button class="float-right btn btn-success mb-3" wire:click.prevent="cekSaveOrder()"><i class="fas fa-save"></i>&nbsp Simpan Pesanan</button>
                    </div>
                </div>
                
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 25%">Nama Produk</th>
                            <th style="width: 15%">Harga Jual</th>
                            <th style="width: 10%">Kuantiti</th>
                            <th style="width: 15%">Diskon</th>
                            <th style="width: 15%">Jumlah</th>
                            <th style="width: 15%">Deskripsi</th>
                            <th style="width: 5%">Tindakan</th>
                        </tr>
                    </thead>
                    <tbody>
                    @if(session('cartedit'))
                        @foreach(session('cartedit') as $id => $details)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td><input value="{{ $details['product'] }}" type="text" class="form-control" placeholder="Klik untuk memilih produk"  readonly></td>
                            <td> @currency($details['price']) </td>
                            <td>
                                <i class="fas fa-plus" wire:click="increaseItem({{ $details['id'] }})" style="cursor:pointer"></i>
                                &nbsp{{ $details['qty'] }}&nbsp
                                <i class="fas fa-minus" wire:click="decreaseItem({{ $details['id'] }})" style="cursor:pointer"></i>
                            </td>
                            <td>
                            <div class="input-group">
                                <input type="number" value="{{ $details['disc'] }}" wire:change="discountDesc({{ $details['id'] }}, $event.target.value)"  class="form-control" aria-label="Amount (to the nearest dollar)">
                                <div class="input-group-append">
                                    <span class="input-group-text">%</span>
                                </div>
                            </div>
                            </td>
                            <td><input type="text" value="@currency( ($details['price'] * $details['qty'])-(($details['price'] * $details['qty'])* ($details['disc']/100)) )" class="form-control" readonly></td>
                            <td><input value="{{ $details['desc'] }}" wire:change="descriptionOr({{ $details['id'] }}, $event.target.value)" type="text" class="form-control"></td>
                            <td><button class="btn btn-danger mb-3" wire:click.prevent="removeItem({{$id}})"><i class="fas fa-minus"></i></button></td>
                            <input type="hidden" value="{{  $GrandTotal += ($details['price'] * $details['qty'])-(($details['price'] * $details['qty'])* ($details['disc']/100))  }}">
                            
                        </tr>
                        @endforeach
                        <tr>
                            <td colspan="5" class="text-center"><h5>Total</h5></td>
                            <td colspan="3"><h5>@currency( $GrandTotal )</h5></td>
                        </tr>
                    @endif
                    </tbody>
                </table>
                <!-- Modal Produk -->
                <div wire:ignore.self class="modal fade" id="ModalProduk" tabindex="-1" role="dialog" aria-labelledby="ModalProdukLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title font-weight-bold mb-3" id="ModalCustomerLabel">Daftar Produk</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <p class="font-weight-bold">Silahkan klik pada baris untuk memilih produk yang diinginkan</p>
                                        </div>
                                        <div class="col-sm-4">
                                            <p class="text-right font-weight-bold">Total Produk: {{$listPro->count()}}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                        <input wire:model="searchpro" type="text" class="form-control" placeholder="Cari Produk">
                                            <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th style="width: 35%">Nama Produk</th>
                                                    <th style="width: 20%">Tipe</th>
                                                    <th style="width: 10%">Stok</th>
                                                    <th style="width: 15%">Unit</th>
                                                    <th style="width: 20%">Harga Jual</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse($listPro as $index=>$pro)
                                                <tr style="cursor:pointer" wire:click="assignPro({{ $pro->id }})" data-placement="top" title="Klik untuk Pilih Produk" data-dismiss="modal">
                                                    <td>{{$pro->name}}</td>
                                                    <td>{{$pro->type}}</td>
                                                    <td>{{$pro->qty}}</td>
                                                    <td>{{$pro->unit}}</td>
                                                    <td>@currency($pro->sell_price)</td>
                                                </tr>
                                                @empty
                                                <td colspan="8"><h6 class="text-center">Data Kosong</h6></td>
                                                @endforelse
                                            
                                            </tbody>
                                            </table>
                                            <div style="display:flex; justify-content:center">
                                                <!-- paginate link -->
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                    Tutup
                                    </button>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script>
    // var today = new Date();
    // var dd = today.getDate();
    // var mm = today.getMonth()+1; //January is 0 so need to add 1 to make it 1!
    // var yyyy = today.getFullYear();
    // if(dd<10){
    // dd='0'+dd
    // } 
    // if(mm<10){
    // mm='0'+mm
    // } 

    // today = yyyy+'-'+mm+'-'+dd;
    // document.getElementById("orderDate").setAttribute("min", today);
    // // document.getElementById("sentDate").setAttribute("min", today);

    // function tampil(){
    //     let x = document.getElementById("tgl");
    //     if(x.style.display === "none"){
    //         x.style.display = "block";
    //     }else{
    //         x.style.display = "none"
    //     }
    // }

    window.addEventListener('show-modal-produk', event=> {
        $('#ModalProduk').modal('show')
    })

    window.addEventListener('swal:confirmOrder', event => { 
            swal({
            title: event.detail.message,
            text: event.detail.text,
            icon: event.detail.type,
            buttons: true,
            dangerMode: true,
            })
            .then((willDelete) => {
            if (willDelete) {
                window.livewire.emit('prosesUpdateOrder');
            }
            });
        });
</script>