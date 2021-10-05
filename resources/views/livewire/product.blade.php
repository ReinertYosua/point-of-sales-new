<div>
   <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-body">
                    <h3 class="font-weight-bold mb-3">Daftar Produk</h3>
                    @if (session()->has('message'))
                        <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                        {{ session('message') }}
                        </div>
                    @endif
                    <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"> Tambah</i></button>
                    <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Kategori"></div>
                    <!-- <div class="container-fluid"> -->
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 15%">Kategori</th>
                                <th style="width: 20%">Supplier</th>
                                <th style="width: 25%">Nama Produk</th>
                                <th style="width: 5%">Quantity</th>
                                <th style="width: 15%">Harga Jual</th>
                                <th style="width: 15%">Tindakan</th>
                            </tr>
                        </thead>
                        <tbody>
                        @forelse($pro as $index=>$product)
                            <tr style="cursor:pointer" data-toggle="tooltip" data-placement="top" title="Klik untuk lihat detail">
                                <td>{{$index + 1}}</td>
                                <td>{{$product->category_id}}</td>
                                <td>{{$product->supplier_id}}</td>
                                <td>{{$product->name}}</td>
                                <td>{{$product->qty}}</td>
                                <td>{{$product->sell_price}}</td>
                                <td>
                                    <button data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" class="btn btn-success btn-sm">Tambah Gambar</button>
                                    <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $product->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                    <button wire:click="deleteConfirm({{ $product->id }})" class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                        @empty
                            <td colspan="8"><h6 class="text-center">Produk Kosong</h6></td>
                        @endforelse
                        </tbody>
                    </table>
                    <!-- </div> -->
                    <div style="display:flex; justify-content:center">
                        {{$pro->links()}}
                    </div>

                    <!-- Simpan Modal -->
                    <div wire:ignore.self class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Tambah Produk</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        <h6 class="text-danger">*Wajib diisi</h6>
                                        <form>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Pilih Kategori</label><span class="text-danger">*</span>
                                                        <!-- <div id="for-picker" wire:ignore> -->
                                                            <select class="form-control selectpicker" id="select-country" data-live-search="true" data-container="#for-picker">
                                                                <option>China</option>
                                                                <option>Malayasia</option>
                                                                <option>Singapore</option>
                                                            </select>
                                                        <!-- </div> -->
                                                        <!-- <input wire:model="category_id" type="text" class="form-control"> -->
                                                        @error('category_id') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Pilih Supplier</label><span class="text-danger">*</span>
                                                        <input wire:model="supplier_id" type="text" class="form-control">
                                                        @error('supplier_id') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Produk</label><span class="text-danger">*</span>
                                                        <input wire:model="name" type="text" class="form-control">
                                                        @error('name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Tipe</label>
                                                        <input wire:model="type" type="text" class="form-control">
                                                        @error('type') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kuantitas</label>
                                                        <input wire:model="qty" type="number" class="form-control">
                                                        @error('qty') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Modal</label>
                                                        <input wire:model="capital_price" type="number" class="form-control">
                                                        @error('capital_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Jual</label>
                                                        <input wire:model="sell_price" type="number" class="form-control">
                                                        @error('sell_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Unit</label>
                                                        <input wire:model="unit" type="text" class="form-control">
                                                        @error('unit') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Deskripsi</label>
                                                        <textarea wire:model="description" name="" class="form-control"></textarea>
                                                        @error('description') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                        Batal
                                        </button>
                                        <button type="button" wire:click.prevent="store()" class="btn btn-primary close-modal">Simpan</button>
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
  window.addEventListener('close-modal', event=> {
     $('#exampleModal').modal('hide'),
     $('#updateModal').modal('hide')
  })
</script>
