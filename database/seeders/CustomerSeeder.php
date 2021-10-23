<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CustomerSeeder extends Seeder
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
          \DB::table('customer')->insert([
              'first_name' => $faker->firstName,
              'last_name' => $faker->lastName,
              'address' => $faker->address,
              'city' => $faker->city,
              'province' => $faker->state,
              'country' => $faker->country,
              'phone1' => $faker->phoneNumber,
              'phone2' => $faker->phoneNumber,
              'postal_code' => $faker->postcode,
              'account_number' => $faker->bankAccountNumber,
              'bank_name' => $faker->company,
              'description' => $faker->text,
          ]);
        }
    }
}
