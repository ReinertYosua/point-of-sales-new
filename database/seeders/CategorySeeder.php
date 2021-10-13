<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        $faker = Faker::create('id_ID');
        for($i = 1; $i <= 50; $i++){
            // insert data ke table pegawai menggunakan Faker
          \DB::table('category')->insert([
              'name' => $faker->word,
              'description' => $faker->text,
          ]);

      }
    }
}
