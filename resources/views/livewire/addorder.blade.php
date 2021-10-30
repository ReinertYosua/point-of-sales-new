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
                                <input wire:model="date_order" type="text" class="form-control">
                                @error('date_order') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Status Pembayaran</label><span class="text-danger">*</span>
                                <select class="form-control" id="exampleFormControlSelect1">
                                    <option>--Pilih--</option>
                                    <option>Bayar Lunas</option>
                                    <option>Bayar Berjangka</option>
                                </select>
                                @error('address') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Lunas</label><span class="text-danger">*</span>
                                <select class="form-control" id="exampleFormControlSelect1">
                                    <option>--Pilih--</option>
                                    <option>Bayar Lunas</option>
                                    <option>Bayar Berjangka</option>
                                </select>
                                @error('address') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Pelanggan</label><span class="text-danger">*</span>
                                <input wire:model="date_order" type="text" class="form-control">
                                @error('date_order') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Detil Pembayaran</label>
                                <textarea wire:model="description" name="" class="form-control"></textarea>
                                @error('description') <small class="text-danger">{{$message}}</small>@enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                    <input type="checkbox" aria-label="Checkbox for following heading">
                                    </div>
                                </div>
                                <h5>&nbspSelesai</h5>
                                </div>
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
        </div>
    </div>
</div>