<?php

namespace Database\Seeders;

use App\Models\TipSlike;
use Illuminate\Database\Seeder;

class TipSlikeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        TipSlike::create(['naziv' => 'slika']);
        TipSlike::create(['naziv' => 'slicica']);
    }
}
