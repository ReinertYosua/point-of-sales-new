<div>
   <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-body">
                    <h3 class="font-weight-bold mb-3">Daftar Pelanggan</h3>
                    @if (session()->has('message'))
                        <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                        {{ session('message') }}
                        </div>
                    @endif
                    <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"> Tambah</i></button>
                    <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Pelanggan"></div>
                    <!-- <div class="container-fluid"> -->
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 20%">Nama</th>
                                <th style="width: 15%">Telepon 1</th>
                                <th style="width: 15%">Telepon 2</th>
                                <th style="width: 30%">Alamat</th>
                                <th style="width: 15%">Tindakan</th>
                            </tr>
                        </thead>
                        <tbody>
                        @forelse($cus as $index=>$cust)
                            <tr>
                                <td>{{$cus->firstItem() + $index}}</td>
                                <td>{{$cust->first_name." ".$cust->last_name}}</td>
                                <td>{{$cust->phone1}}</td>
                                <td>{{$cust->phone2}}</td>
                                <td>{{substr($cust->address,0,200)}}</td>
                                <td>
                                    <button data-toggle="modal" data-target="#detailModal" wire:click="detail({{ $cust->id }})" class="btn btn-success btn-sm">Detil</button>
                                    <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $cust->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                    <button wire:click="deleteConfirm({{ $cust->id }})" class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                        @empty
                            <td colspan="8"><h6 class="text-center">Pelanggan Kosong</h6></td>
                        @endforelse
                        </tbody>
                    </table>
                    <p class="text-right font-weight-bold">Total data Pelanggan: {{$cus->total()}}</p>
                    <!-- </div> -->
                    <div style="display:flex; justify-content:center">
                        {{$cus->links()}}
                    </div>

                    <!-- Simpan Modal -->
                    <div wire:ignore.self class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Tambah Pelanggan</h3>
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
                                                        <label>Nama Depan</label><span class="text-danger">*</span>
                                                        <input wire:model="first_name" type="text" class="form-control">
                                                        @error('first_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Belakang</label><span class="text-danger">*</span>
                                                        <input wire:model="last_name" type="text" class="form-control">
                                                        @error('last_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Alamat</label><span class="text-danger">*</span>
                                                        <textarea wire:model="address" name="" class="form-control"></textarea>
                                                        @error('address') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
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
                                                        <input wire:model="province" type="text" class="form-control">
                                                        @error('province') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Negara</label>
                                                        <input wire:model="country" type="text" class="form-control">
                                                        @error('country') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP 1</label><span class="text-danger">*</span>
                                                        <input wire:model="phone1" type="text" class="form-control">
                                                        @error('phone1') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP 2</label>
                                                        <input wire:model="phone2" type="text" class="form-control">
                                                        @error('phone2') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kode Pos</label>
                                                        <input wire:model="postal_code" type="text" class="form-control">
                                                        @error('postal_code') <small class="text-danger">{{$message}}</small>@enderror
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
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Ubah Pelanggan</h3>
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
                                                        <label>Nama Depan</label><span class="text-danger">*</span>
                                                        <input type="hidden" wire:model="idCust" class="form-control">
                                                        <input wire:model="first_name" type="text" class="form-control">
                                                        @error('first_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Nama Belakang</label><span class="text-danger">*</span>
                                                        <input wire:model="last_name" type="text" class="form-control">
                                                        @error('last_name') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Alamat</label><span class="text-danger">*</span>
                                                        <textarea wire:model="address" name="" class="form-control"></textarea>
                                                        @error('address') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
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
                                                        <input wire:model="province" type="text" class="form-control">
                                                        @error('province') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Negara</label>
                                                        <input wire:model="country" type="text" class="form-control">
                                                        @error('country') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP 1</label><span class="text-danger">*</span>
                                                        <input wire:model="phone1" type="text" class="form-control">
                                                        @error('phone1') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Telepon/HP 2</label>
                                                        <input wire:model="phone2" type="text" class="form-control">
                                                        @error('phone2') <small class="text-danger">{{$message}}</small>@enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Kode Pos</label>
                                                        <input wire:model="postal_code" type="text" class="form-control">
                                                        @error('postal_code') <small class="text-danger">{{$message}}</small>@enderror
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
                        <div class="modal-dialog modal-xl modal-dialog-scrollable" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Detil Pelanggan</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        @foreach($detailCus as $detCus)
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Depan</label>
                                                        <p class="h4">{{$detCus->first_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Belakang</label>
                                                        <p class="h4">{{$detCus->last_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Alamat</label>
                                                        <p class="h4">{{$detCus->address}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kota</label>
                                                        <p class="h4">{{$detCus->city}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Propinsi</label>
                                                        <p class="h4">{{$detCus->province}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Negara</label>
                                                        <p class="h4">{{$detCus->country}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Telepon/HP 1</label>
                                                        <p class="h4">{{$detCus->phone1}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Telepon/HP 2</label>
                                                        <p class="h4">{{$detCus->phone2}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Kode Pos</label>
                                                        <p class="h4">{{$detCus->postal_code}}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nomor Rekening</label>
                                                        <p class="h4">{{$detCus->account_number}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Nama Bank</label>
                                                        <p class="h4">{{$detCus->bank_name}}</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="text-primary">Deskripsi</label>
                                                        <p class="h4">{{$detCus->description}}</p>
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