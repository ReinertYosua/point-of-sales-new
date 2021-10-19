<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        $startDate = '2021-07-31';
        $endDate = '2021-09-31';
        for($i = 1; $i <= 50; $i++){
            // insert data ke table pegawai menggunakan Faker
          \DB::table('product')->insert([
              'category_id' => $faker->numberBetween($min = 1, $max = 50),
              'supplier_id' => $faker->numberBetween($min = 1, $max = 50),
              'name' => $faker->word,
              'type' => $faker->word,
              'qty' => $faker->randomDigit,
              'capital_price' => $faker->numberBetween($min = 10000, $max = 100000000),
              'sell_price' => $faker->numberBetween($min = 10000, $max = 100000000),
              'unit' => $faker->word,
              'description' => $faker->text,
              'featuredImage' => $faker->text,
              'created_at' => $faker->dateTimeBetween($startDate, $endDate),
          ]);
        }
    }
}
