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
                            <th style="width: 15%">Supplier</th>
                            <th style="width: 20%">Nama Produk</th>
                            <th style="width: 5%">Quantity</th>
                            <th style="width: 15%">Harga Jual</th>
                            <th style="width: 15%">Gambar</th>
                            <th style="width: 10%">Tindakan</th>
                        </tr>
                    </thead>
                    <tbody>
                    @forelse($pro as $index=>$product)
                        <tr>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$pro->firstItem() + $index}}</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->cat_name}}</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->company_name}}</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->name}}</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">{{$product->qty}}</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail">@currency($product->sell_price)</td>
                            <td style="cursor:pointer" data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $product->id }})" data-placement="top" title="Klik untuk lihat detail"><img src="{{ asset('storage/images/'.$product->featuredImage)}}" alt="Gambar Produk" style="object-fit:contain; width:100%; height:125px"></td>
                            <td>
                                <!-- <button data-toggle="modal" data-target="#gambarModal" wire:click="detilProdukGambar({{ $product->id }})" class="btn btn-success btn-sm">Tambah Gambar</button> -->
                                <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $product->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                <button wire:click="deleteConfirm({{ $product->id }})" class="btn btn-danger btn-sm">Hapus</button>
                            </td>
                        </tr>
                    @empty
                        <td colspan="8"><h6 class="text-center">Produk Kosong</h6></td>
                    @endforelse
                    </tbody>
                </table>
                <p class="text-right font-weight-bold">Total data Produk: {{$pro->total()}}</p>
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
                                                    <input wire:model="capital_price" type="text" class="form-control" id="capital_price">
                                                    @error('capital_price') <small class="text-danger">{{$message}}</small>@enderror
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Harga Jual</label><span class="text-danger">*</span>
                                                    <input wire:model="sell_price" type="text" class="form-control" id="sell_price">
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
                                    <button type="button" wire:click.prevent="validateDesc(1)" class="btn btn-primary">Selanjutnya</button>
                                    <!-- <button type="button" wire:click.prevent="validateDesc()" class="btn btn-primary close-modal">Simpan</button> -->
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
                                                    <input wire:model="capital_price" type="text" class="form-control" id="capital_price2">
                                                    @error('capital_price') <small class="text-danger">{{$message}}</small>@enderror
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Harga Jual</label><span class="text-danger">*</span>
                                                    <input wire:model="sell_price" type="text" class="form-control" id="sell_price2">
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
                                    <button type="button" wire:click.prevent="validateDesc(0)" class="btn btn-warning close-modal">Ubah Gambar</button>
                                    <button type="button" wire:click.prevent="updateData(0)" class="btn btn-primary close-modal">Simpan</button>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- Detail Modal -->
                <div wire:ignore.self class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-scrollable" role="document">
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
                                                    <p class="h4">@currency($detPro->capital_price)</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="text-primary">Harga Jual</label>
                                                    <p class="h4">@currency($detPro->sell_price)</p>
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
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#detailGambarModal" onclick="closeModal()">Selanjutnya</button>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- Detail Gambar Modal -->
                <div wire:ignore.self class="modal fade" id="detailGambarModal" tabindex="-1" role="dialog" aria-labelledby="detailGambarModal" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title font-weight-bold mb-3" id="detailGambarModal">Detail Gambar Produk</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <div class="row">
                                        @foreach($detailGambarProduk as $gapro)
                                            <div class="col-4 card mx-auto">
                                                <img src="{{ asset('storage/images/'.$gapro->detailImage)}}" class="img-fluid" alt="Preview Image">
                                            </div>
                                        @endforeach
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
                <!-- Tambah Gambar Modal -->
                <div wire:ignore.self class="modal fade" id="gambarModal" tabindex="-1" role="dialog" aria-labelledby="gambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title font-weight-bold mb-3" id="gambarModalLabel">Gambar Produk</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Gambar Utama</label><span class="text-danger">*</span>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="customFile" wire:model="imageFeatured">
                                                        <label for="customFile" class="custom-file-label">Pilih Gambar</label>
                                                        <div wire:loading wire:target="imageFeatured">Uploading...</div>                            
                                                        @error('imageFeatured') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            @if($imageFeatured)
                                                
                                                    <div class="col-4 card mx-auto">
                                                        <img src="{{ $imageFeatured->temporaryUrl() }}" class="img-fluid" alt="Preview Image">
                                                    </div>
                                            @endif
                                        </div>
                                        </br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Gambar Pendukung (Bisa pilih lebih dari satu)</label><span class="text-danger">*</span>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="customFile" wire:model="image" multiple>
                                                        <label for="customFile" class="custom-file-label">Pilih Gambar</label>    
                                                        <div wire:loading wire:target="image">Uploading...</div>                        
                                                        @error('image.*') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            @if($image)
                                                @foreach ($image as $image)
                                                    <div class="col-4 card me-1 mb-1">
                                                        <img src="{{ $image->temporaryUrl() }}" class="img-fluid" alt="Preview Image">
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal" data-dismiss="modal">
                                    Kembali
                                    </button>
                                    <button type="button" wire:click.prevent="save()" class="btn btn-primary close-modal">Simpan</button>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- Update Gambar Modal -->
                <div wire:ignore.self class="modal fade" id="UpdateGambarModal" tabindex="-1" role="dialog" aria-labelledby="UpdateGambarModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title font-weight-bold mb-3" id="UpdateGambarModalLabel">Gambar Produk</h3>
                                <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                >&times;</button>
                            </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Gambar Utama</label><span class="text-danger">*</span>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="customFile" wire:model="imageFeaturedEdit">
                                                        <label for="customFile" class="custom-file-label">Pilih Gambar</label>
                                                        <div wire:loading wire:target="imageFeaturedEdit">Uploading...</div>                            
                                                        @error('imageFeaturedEdit') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            @if($imageFeaturedEdit)
                                                
                                                    <div class="col-4 card mx-auto">
                                                        <img src="{{ $imageFeaturedEdit->temporaryUrl() }}" class="img-fluid" alt="Preview Image">
                                                    </div>
                                            @endif
                                        </div>
                                        </br>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Gambar Pendukung (Bisa pilih lebih dari satu)</label><span class="text-danger">*</span>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="customFile" wire:model="imageEdit" multiple>
                                                        <label for="customFile" class="custom-file-label">Pilih Gambar</label>    
                                                        <div wire:loading wire:target="imageEdit">Uploading...</div>                        
                                                        @error('imageEdit.*') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            @if($imageEdit)
                                                @foreach ($imageEdit as $imageEdit)
                                                    <div class="col-4 card me-1 mb-1">
                                                        <img src="{{ $imageEdit->temporaryUrl() }}" class="img-fluid" alt="Preview Image">
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#updateModal" data-dismiss="modal">
                                    Kembali
                                    </button>
                                    <button type="button" wire:click.prevent="update()" class="btn btn-primary close-modal">Simpan</button>
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
    function closeModal(){
        //detailModal
        $('#detailModal').modal('hide')
    }

    window.addEventListener('close-modal', event=> {
        // $('#exampleModal').modal('hide'),
        $('#updateModal').modal('hide')
        $('#gambarModal').modal('hide')
        $('#UpdateGambarModal').modal('hide')
    })

    window.addEventListener('show-modal-gambar', event=> {
        $('#gambarModal').modal('show'),
        $('#exampleModal').modal('hide')
    })
    window.addEventListener('show-modal-editgambar', event=> {
        $('#UpdateGambarModal').modal('show'),
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


    
    var capital_price = document.getElementById("capital_price");
    capital_price.addEventListener("keyup", function(e) {
    // tambahkan 'Rp.' pada saat form di ketik
    // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
    capital_price.value = formatRupiah(this.value, "Rp. ");
    });

    var capital_price2 = document.getElementById("capital_price2");
    capital_price2.addEventListener("keyup", function(e) {
    // tambahkan 'Rp.' pada saat form di ketik
    // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
    capital_price2.value = formatRupiah(this.value, "Rp. ");
    });

    var sell_price = document.getElementById("sell_price");
    sell_price.addEventListener("keyup", function(e) {
    // tambahkan 'Rp.' pada saat form di ketik
    // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
    sell_price.value = formatRupiah(this.value, "Rp. ");
    });

    var sell_price2 = document.getElementById("sell_price2");
    sell_price2.addEventListener("keyup", function(e) {
    // tambahkan 'Rp.' pada saat form di ketik
    // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
    sell_price2.value = formatRupiah(this.value, "Rp. ");
    });

    /* Fungsi formatRupiah */
    function formatRupiah(angka, prefix) {
    var number_string = angka.replace(/[^,\d]/g, "").toString(),
        split = number_string.split(","),
        sisa = split[0].length % 3,
        rupiah = split[0].substr(0, sisa),
        ribuan = split[0].substr(sisa).match(/\d{3}/gi);

    // tambahkan titik jika yang di input sudah menjadi angka ribuan
    if (ribuan) {
        separator = sisa ? "." : "";
        rupiah += separator + ribuan.join(".");
    }

    rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
    return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
    }
    

</script>
@endpush

