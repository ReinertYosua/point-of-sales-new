<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;


use App\Models\Category as CategoryModel;


class Category extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    protected $listeners = ['delete'];
    public $idCat,$name,$description;
    public $search;

    public function updatingSearch(){
        $this->resetPage();
    }

    public function render()
    {
        $category = CategoryModel::where('name','like','%'.$this->search.'%')->orderBy('created_at', 'DESC')->paginate(10);
        return view('livewire.category',[
            'cat' => $category
        ]);
    }

    public function store(){
        $this->validate([
            'name'=>'required',
            'description'=>'required'
        ]);
        
        CategoryModel::create([
            'name' => $this->name,
            'description' => $this->description,
        ]);
        //()->flash('message', 'Kategori baru berhasil ditambahkan');

        $this->name = "";
        $this->description = "";
        $this->dispatchBrowserEvent('close-modal');
        $this->dispatchBrowserEvent('swal:modal', [
            'type' => 'success',  
            'message' => 'Kategori Baru berhasil dibuat!', 
            'text' => 'Data ditambahkan ke database.'
        ]);
        //$this->emit('categoryStore'); // Close model to using to jquery
    }

    public function edit($id){
        $cat = CategoryModel::where('id',$id)->first();
        $this->idCat = $id;
        $this->name = $cat->name;
        $this->description = $cat->description;
    }

    public function update(){
        $this->validate([
            'name'=>'required',
            'description'=>'required'
        ]);
        if($this->idCat){
            $cat = CategoryModel::find($this->idCat);
            $cat->update([
                'name' => $this->name,
                'description' => $this->description
            ]);
            //session()->flash('message', 'Kategori berhasil diubah');

            $this->name = "";
            $this->description = "";
            $this->dispatchBrowserEvent('close-modal');
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Kategori berhasil diubah!', 
                'text' => 'Data pada database diubah.'
            ]);
        }
    }

    public function deleteConfirm($id){
        $this->dispatchBrowserEvent('swal:confirm', [
            'type' => 'warning',  
            'message' => 'Apakah anda yakin ?', 
            'text' => 'Jika dihapus, anda tidak dapat mengembalikan data ini!',
            'id' => $id,
        ]);
    }

    public function delete($id){
        if($id){
            CategoryModel::where('id',$id)->delete();
            //session()->flash('message', 'Kategori berhasil dihapus');
            $this->dispatchBrowserEvent('swal:modal', [
                'type' => 'success',  
                'message' => 'Kategori berhasil dihapus!', 
                'text' => 'Data pada database dihapus.'
            ]);
        }
    }
}
