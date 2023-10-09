<?php

namespace Database\Seeders;

use App\Models\Uloge;
use Illuminate\Database\Seeder;

class UlogeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Uloge::create([
            'naziv' => 'admin'
        ]);
        Uloge::create([
            'naziv' => 'korisnik'
        ]);
    }
}
