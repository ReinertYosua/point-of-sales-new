<div>
   <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-body">
                    <h3 class="font-weight-bold mb-3">Daftar Supplier</h3>
                    @if (session()->has('message'))
                        <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                        {{ session('message') }}
                        </div>
                    @endif
                    <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"> Tambah</i></button>
                    <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Supplier"></div>
                    <!-- <div class="container-fluid"> -->
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 25%">Nama Perusahaan</th>
                                <th style="width: 20%">Nama Kontak</th>
                                <th style="width: 18%">Alamat</th>
                                <th style="width: 12%">Telepon</th>
                                <th style="width: 20%">Tindakan</th>
                            </tr>
                        </thead>
                        <tbody>
                        @forelse($sup as $index=>$supplier)
                            <tr>
                                <td>{{$index + 1}}</td>
                                <td>{{$supplier->company_name}}</td>
                                <td>{{$supplier->contact_name}}</td>
                                <td>{{$supplier->address}}</td>
                                <td>{{$supplier->phone}}</td>
                                <td>
                                    <button data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $supplier->id }})" class="btn btn-success btn-sm">Detil</button>
                                    <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $supplier->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                    <button wire:click="deleteConfirm({{ $supplier->id }})" class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                        @empty
                            <td colspan="8"><h6 class="text-center">Supplier Kosong</h6></td>
                        @endforelse
                        </tbody>
                    </table>
                    <!-- </div> -->
                    <div style="display:flex; justify-content:center">
                        {{$sup->links()}}
                    </div>

                    <!-- Simpan Modal -->
                    <div wire:ignore.self class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Tambah Supplier</h3>
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
                                                        <label>Nama Perusahaan</label><span class="text-danger">*</span>
                                                        <input wire:model="company_name" type="text" class="form-control">
                                                        @error('company_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Kontak</label><span class="text-danger">*</span>
                                                        <input wire:model="contact_name" type="text" class="form-control">
                                                        @error('contact_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Jabatan</label>
                                                        <input wire:model="contact_title" type="text" class="form-control">
                                                        @error('contact_title') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Alamat</label><span class="text-danger">*</span>
                                                        <textarea wire:model="address" name="" class="form-control"></textarea>
                                                        @error('address') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kota</label>
                                                        <input wire:model="city" type="text" class="form-control">
                                                        @error('city') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Propinsi</label>
                                                        <input wire:model="region" type="text" class="form-control">
                                                        @error('region') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Negara</label>
                                                        <input wire:model="country" type="text" class="form-control">
                                                        @error('country') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kode Pos</label>
                                                        <input wire:model="postal_code" type="number" class="form-control">
                                                        @error('postal_code') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP</label><span class="text-danger">*</span>
                                                        <input wire:model="phone" type="text" class="form-control">
                                                        @error('phone') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nomor Rekening</label>
                                                        <input wire:model="account_number" type="number" class="form-control">
                                                        @error('account_number') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Bank</label>
                                                        <input wire:model="bank_name" type="text" class="form-control">
                                                        @error('bank_name') <small class="text-danger">{{$message}}</small>@enderror
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
                    <div wire:ignore.self class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Ubah Supplier</h3>
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
                                                        <label>Nama Perusahaan</label><span class="text-danger">*</span>
                                                        <input type="hidden" wire:model="idSup" class="form-control">
                                                        <input wire:model="company_name" type="text" class="form-control">
                                                        @error('company_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Kontak</label><span class="text-danger">*</span>
                                                        <input wire:model="contact_name" type="text" class="form-control">
                                                        @error('contact_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Jabatan</label>
                                                        <input wire:model="contact_title" type="text" class="form-control">
                                                        @error('contact_title') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Alamat</label><span class="text-danger">*</span>
                                                        <textarea wire:model="address" name="" class="form-control"></textarea>
                                                        @error('address') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kota</label>
                                                        <input wire:model="city" type="text" class="form-control">
                                                        @error('city') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Propinsi</label>
                                                        <input wire:model="region" type="text" class="form-control">
                                                        @error('region') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Negara</label>
                                                        <input wire:model="country" type="text" class="form-control">
                                                        @error('country') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kode Pos</label>
                                                        <input wire:model="postal_code" type="number" class="form-control">
                                                        @error('postal_code') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP</label><span class="text-danger">*</span>
                                                        <input wire:model="phone" type="text" class="form-control">
                                                        @error('phone') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nomor Rekening</label>
                                                        <input wire:model="account_number" type="number" class="form-control">
                                                        @error('account_number') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Bank</label>
                                                        <input wire:model="bank_name" type="text" class="form-control">
                                                        @error('bank_name') <small class="text-danger">{{$message}}</small>@enderror
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
                                        <button type="button" wire:click.prevent="update()" class="btn btn-primary close-modal">Simpan</button>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <!-- Detail Modal -->
                    <div wire:ignore.self class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Detil Supplier</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        @foreach($detailSup as $detSup)
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Perusahaan</label>
                                                        <p class="h4">{{$detSup->company_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Kontak</label>
                                                        <p class="h4">{{$detSup->contact_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Jabatan</label>
                                                        <p class="h4">{{$detSup->contact_title}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Alamat</label>
                                                        <p class="h4">{{$detSup->address}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kota</label>
                                                        <p class="h4">{{$detSup->city}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Propinsi</label>
                                                        <p class="h4">{{$detSup->region}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Negara</label>
                                                        <p class="h4">{{$detSup->country}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kode Pos</label>
                                                        <p class="h4">{{$detSup->postal_code}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Telepon/HP</label>
                                                        <p class="h4">{{$detSup->phone}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nomor Rekening</label>
                                                        <p class="h4">{{$detSup->account_number}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Bank</label>
                                                        <p class="h4">{{$detSup->bank_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Deskripsi</label>
                                                        <p class="h4">{{$detSup->description}}</p>
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
<script>
  window.addEventListener('close-modal', event=> {
     $('#exampleModal').modal('hide'),
     $('#updateModal').modal('hide')
  })
</script>
