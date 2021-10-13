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
                    <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal" id="resetSelect2"><i class="fas fa-plus"> Tambah</i></button>
                    <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Produk"></div>
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
                            <tr>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$index + 1}}</td>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->cat_name}}</td>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->company_name}}</td>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->name}}</td>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->qty}}</td>
                                <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->sell_price}}</td>
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
                                                        <div wire:ignore >
                                                            <select class="js-example-responsive" style="width: 100%" id="select-category">
                                                                <option value="">Silahkan Pilih Kategori</option>
                                                                @foreach($listCategory as $cat)
                                                                <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        @error('category_id') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Pilih Supplier</label><span class="text-danger">*</span>
                                                        <div wire:ignore >
                                                            <select class="js-example-responsive" style="width: 100%" id="select-supplier">
                                                                <option value="">Silahkan Pilih Supplier</option>
                                                                @foreach($listSupplier as $sup)
                                                                <option value="{{ $sup->id }}">{{ $sup->company_name." - ".$sup->contact_name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
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
                                                        <label>Tipe</label><span class="text-danger">*</span>
                                                        <input wire:model="type" type="text" class="form-control">
                                                        @error('type') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kuantitas</label><span class="text-danger">*</span>
                                                        <input wire:model="qty" type="number" class="form-control">
                                                        @error('qty') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Modal</label><span class="text-danger">*</span>
                                                        <input wire:model="capital_price" type="number" class="form-control">
                                                        @error('capital_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Jual</label><span class="text-danger">*</span>
                                                        <input wire:model="sell_price" type="number" class="form-control">
                                                        @error('sell_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Unit</label><span class="text-danger">*</span>
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
                    <!-- Update Modal -->
                    <div wire:ignore.self class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModal" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="updateModal">Ubah Produk</h3>
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
                                                        <input type="hidden" wire:model="idPro" class="form-control">
                                                        <div wire:ignore >
                                                            <select class="js-example-responsive" style="width: 100%" id="select-category2">
                                                                <option value="">Silahkan Pilih Kategori</option>
                                                                @foreach($listCategory as $cat)
                                                                <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        @error('category_id') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Pilih Supplier</label><span class="text-danger">*</span>
                                                        <div wire:ignore >
                                                            <select class="js-example-responsive" style="width: 100%" id="select-supplier2">
                                                                <option value="">Silahkan Pilih Supplier</option>
                                                                @foreach($listSupplier as $sup)
                                                                <option value="{{ $sup->id }}">{{ $sup->company_name." - ".$sup->contact_name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
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
                                                        <label>Tipe</label><span class="text-danger">*</span>
                                                        <input wire:model="type" type="text" class="form-control">
                                                        @error('type') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kuantitas</label><span class="text-danger">*</span>
                                                        <input wire:model="qty" type="number" class="form-control">
                                                        @error('qty') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Modal</label><span class="text-danger">*</span>
                                                        <input wire:model="capital_price" type="number" class="form-control">
                                                        @error('capital_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Harga Jual</label><span class="text-danger">*</span>
                                                        <input wire:model="sell_price" type="number" class="form-control">
                                                        @error('sell_price') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Unit</label><span class="text-danger">*</span>
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
                    <!-- Detail Modal -->
                    <div wire:ignore.self class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="detailModalLabel">Detail Produk</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        @foreach($detailProduk as $detPro)
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kategori</label>
                                                        <p class="h4">{{$detPro->cat_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Supplier</label>
                                                        <p class="h4">{{$detPro->company_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Produk</label>
                                                        <p class="h4">{{$detPro->name}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Tipe</label>
                                                        <p class="h4">{{$detPro->type}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kuantitas</label>
                                                        <p class="h4">{{$detPro->qty}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Harga Modal</label>
                                                        <p class="h4">{{$detPro->capital_price}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Harga Jual</label>
                                                        <p class="h4">{{$detPro->sell_price}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Unit</label>
                                                        <p class="h4">{{$detPro->unit}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Deskripsi</label>
                                                        <p class="h4">{{$detPro->description}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
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


@push('scripts')
<script>
    window.addEventListener('close-modal', event=> {
        $('#exampleModal').modal('hide'),
        $('#updateModal').modal('hide')
    })

    window.addEventListener('tampilData', event=>{
        $selectCat2.val(event.detail.idKat).trigger("change");
        $selectSup2.val(event.detail.idSup).trigger("change");
    })

    //$('#select-category').val(null).trigger('change');
    let $selectCat = $('#select-category').select2({
        dropdownParent : $('#exampleModal .modal-content')
    });
    let $selectCat2 = $('#select-category2').select2({
        dropdownParent : $('#updateModal .modal-content')
    });
    let $selectSup = $('#select-supplier').select2({
        dropdownParent : $('#exampleModal .modal-content')
    });
    let $selectSup2 = $('#select-supplier2').select2({
        dropdownParent : $('#updateModal .modal-content')
    });

    $("#resetSelect2").on("click", function (){
        $selectCat.val("").trigger("change");
        $selectSup.val("").trigger("change");
    });

    $('#select-category2').on('change', function (e) {
        let data = $('#select-category2').val();
        livewire.emit('tmpCategory', data);
        //@this.set('category_id', data);
    });

    $('#select-category').on('change', function (e) {
        let data = $('#select-category').val();
        livewire.emit('tmpCategory', data);
        //@this.set('category_id', data);
    });

    $('#select-supplier2').on('change', function (e) {
        let data = $('#select-supplier2').val();
        livewire.emit('tmpSupplier', data);
        //@this.set('category_id', data);
    });

    $('#select-supplier').on('change', function (e) {
        let data = $('#select-supplier').val();
        livewire.emit('tmpSupplier', data);
        //@this.set('category_id', data);
    });
</script>
@endpush

