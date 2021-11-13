<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <h3 class="font-weight-bold mb-3">Tambah Pesanan</h3>
                <form>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Pesanan</label><span class="text-danger">*</span>
                                <div class="input-group date">
                                    <input wire:model="date_order" type="text" class="form-control tanggal_order" onchange="this.dispatchEvent(new InputEvent('input'))"/>
                                    <span class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </span>
                                </div>
                                @error('date_order') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Pelanggan</label><span class="text-danger">*</span>
                                <input wire:model="customer" placeholder="Klik untuk memilih Pelanggan" type="text" class="form-control" data-toggle="modal" data-target="#ModalCustomer" data-placement="top">
                                @error('customer') <small class="text-danger">{{$message}}</small>@enderror
                                
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Jangka Waktu Pembayaran</label><span class="text-danger">*</span>
                                <div class="input-group date">
                                <select wire:model="term_payment" class="form-control" id="term_payment" onclick=tampil()>
                                    <option>--Pilih--</option>
                                    {{$test}}
                                    
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
                                <textarea wire:model="address" name="" class="form-control"></textarea>
                                @error('address') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Kirim</label><span class="text-danger">*</span>
                                <div class="input-group date">
                                    <input wire:model="sent_date" type="text" class="form-control tanggal_kirim" onchange="this.dispatchEvent(new InputEvent('input'))"/>
                                    <span class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Deskripsi</label>
                                <textarea wire:model="description" name="" class="form-control"></textarea>
                                @error('description') <small class="text-danger">{{$message}}</small>@enderror
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="form-check float-right">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Pesanan Selesai
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                    <h6 class="text-danger">*Wajib diisi</h6>
                                    <div class="row">
                                        <div class="col-sm-12">
                                        <input wire:model="search" type="text" class="form-control" placeholder="Cari Customer">
                                            <table class="table">
                                            <thead>
                                                <tr>
                                                    <th style="width: 10%">No</th>
                                                    <th style="width: 30%">Nama</th>
                                                    <th style="width: 35%">Alamat</th>
                                                    <th style="width: 25%">Kontak</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse($termpay as $index=>$det)
                                                <tr>
                                                    <td>{{$det->day}}</td>
                                                    <td>{{substr($det->description,0,50)}}</td>
                                                    <td>{{$det->day}}</td>
                                                    <td>{{$det->day}}</td>
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
            </div>
        </div>
    </div>
</div>
<script>
    function tampil(){
        let x = document.getElementById("tgl");
        if(x.style.display === "none"){
            x.style.display = "block";
        }else{
            x.style.display = "none"
        }
    }
</script>