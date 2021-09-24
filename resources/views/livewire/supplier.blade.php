<div>
   <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-body">
                    <h3 class="font-weight-bold mb-3">List Supplier</h3>
                    @if (session()->has('message'))
                        <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                        {{ session('message') }}
                        </div>
                    @endif
                    <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"> Tambah</i></button>
                    <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Kategori"></div>
                    <div class="table-responsive">
                    <table class="table table-bordered table-hovered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Perusahaan</th>
                                <th>Nama Kontak</th>
                                <th>Jabatan</th>
                                <th>Alamat</th>
                                <th>Telepon</th>
                                <th>Deskripsi</th>
                                <th>Tindakan</th>
                            </tr>
                        </thead>
                        <tbody>
                        @forelse($sup as $index=>$supplier)
                            <tr>
                                <td>{{$index + 1}}</td>
                                <td>{{$supplier->company_name}}</td>
                                <td>{{$supplier->contact_name}}</td>
                                <td>{{$supplier->contact_title}}</td>
                                <td>{{$supplier->address}}</td>
                                <td>{{$supplier->phone}}</td>
                                <td>{{$supplier->description}}</td>
                                <td>
                                <button data-toggle="modal" data-target="#updateModal" wire:click="edit({{ $supplier->id }})" class="btn btn-primary btn-sm">Ubah</button>
                                <button wire:click="deleteConfirm({{ $supplier->id }})" class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                        @empty
                            <td colspan="8"><h6 class="text-center">Supplier Kosong</h6></td>
                        @endforelse
                        </tbody>
                    </table>
                    </div>
                    <div style="display:flex; justify-content:center">
                        {{$sup->links()}}
                    </div>

                    <!-- Simpan Modal -->
                    <div wire:ignore.self class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Tambah Kategori</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label>Nama Kategori</label>
                                                <input wire:model="name" type="text" class="form-control">
                                                @error('name') <small class="text-danger">{{$message}}</small>@enderror
                                            </div>
                                            <div class="form-group">
                                                <label>Deskripsi</label>
                                                <textarea wire:model="description" name="" class="form-control"></textarea>
                                                @error('description') <small class="text-danger">{{$message}}</small>@enderror
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
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h3 class="modal-title font-weight-bold mb-3" id="exampleModalLabel">Ubah Kategori</h3>
                                    <button
                                    type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    >&times;</button>
                                </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label>Nama Kategori</label>
                                                <input type="hidden" wire:model="idCat" class="form-control">
                                                <input wire:model="name" type="text" class="form-control">
                                                @error('name') <small class="text-danger">{{$message}}</small>@enderror
                                            </div>
                                            <div class="form-group">
                                                <label>Deskripsi</label>
                                                <textarea wire:model="description" name="" class="form-control"></textarea>
                                                @error('description') <small class="text-danger">{{$message}}</small>@enderror
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
