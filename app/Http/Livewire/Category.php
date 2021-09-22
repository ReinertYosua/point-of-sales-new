<?php

namespace App\Http\Livewire;

use Livewire\Component;

use App\Models\Category as CategoryModel;

class Category extends Component
{
    public $idCat,$name,$description;
    public function render()
    {
        $category = CategoryModel::orderBy('created_at', 'DESC')->get();
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
        session()->flash('message', 'Kategori baru berhasil ditambahkan');

        $this->name = "";
        $this->description = "";
        $this->dispatchBrowserEvent('close-modal');
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
            session()->flash('message', 'Kategori berhasil diubah');

            $this->name = "";
            $this->description = "";
            $this->dispatchBrowserEvent('close-modal');
        }
    }

    public function delete($id){
        if($id){
            CategoryModel::where('id',$id)->delete();
            session()->flash('message', 'Kategori berhasil dihapus');
        }
    }
}
