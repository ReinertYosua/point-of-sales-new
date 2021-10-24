<div class="row">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <h3 class="font-weight-bold mb-3">Tambah Pesanan</h3>
                @if (session()->has('message'))
                    <div class="alert alert-success" style="margin-top:30px; font-weight:bold">
                    {{ session('message') }}
                    </div>
                @endif
                <a href="{{ route('tambahpesanan') }}" class="btn btn-primary mb-3"><i class="fas fa-plus"> Tambah</i></a>
                <button class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"> Tambah</i></button>
                <div class="col-md-8 float-md-right"><input wire:model="search" type="text" class="form-control" placeholder="Cari Pesanan"></div>
                <!-- <div class="container-fluid"> -->
                
            </div>
        </div>
    </div>
</div>
