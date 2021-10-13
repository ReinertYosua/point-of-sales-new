<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class SupplierSeeder extends Seeder
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
          \DB::table('supplier')->insert([
              'company_name' => $faker->company,
              'contact_name' => $faker->name,
              'contact_title' => $faker->jobTitle,
              'address' => $faker->address,
              'city' => $faker->city,
              'region' => $faker->state,
              'country' => $faker->country,
              'postal_code' => $faker->postcode,
              'phone' => $faker->phoneNumber,
              'account_number' => $faker->bankAccountNumber,
              'bank_name' => $faker->company,
              'description' => $faker->text,
          ]);
        }
    }
}
