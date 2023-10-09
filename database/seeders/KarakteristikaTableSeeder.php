<?php

namespace Database\Seeders;

use App\Models\Karakteristka;
use Illuminate\Database\Seeder;

class KarakteristikaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Karakteristka::create([
           'naziv' => 'Ekran'
        ]);
        Karakteristka::create([
           'naziv' => 'RAM Memorija'
        ]);
        Karakteristka::create([
           'naziv' => 'Interna Memorija'
        ]);
        Karakteristka::create([
           'naziv' => 'Kamera'
        ]);
        Karakteristka::create([
           'naziv' => 'Procesor'
        ]);
        Karakteristka::create([
            'naziv' => 'Operativni sistem'
        ]);
        Karakteristka::create([
            'naziv' => 'Kapacitet baterije'
        ]);
        Karakteristka::create([
            'naziv' => 'Dimenzije'
        ]);
        Karakteristka::create([
            'naziv' => 'Težina'
        ]);
        Karakteristka::create([
            'naziv' => 'Rezolucija'
        ]);
        Karakteristka::create([
            'naziv' => 'Boja'
        ]);
    }
}
