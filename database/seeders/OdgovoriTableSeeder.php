<?php

namespace Database\Seeders;

use App\Models\Odgovor;
use Illuminate\Database\Seeder;

class OdgovoriTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Odgovor::create([
            'odgovor'=>'Super',
        ]);
        Odgovor::create([
            'odgovor'=>'Dobro',
        ]);
        Odgovor::create([
            'odgovor'=>'Loše',
        ]);
    }
}
