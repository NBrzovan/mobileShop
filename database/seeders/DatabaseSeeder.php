<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UlogeTableSeeder::class);
        $this->call(KorisnikTableSeeder::class);
        $this->call(NavigacijaTableSeeder::class);
        $this->call(MarkaTableSeeder::class);
        $this->call(KarakteristikaTableSeeder::class);
        $this->call(TipSlikeTableSeeder::class);
        $this->call(SlikaTableSeeder::class);
        $this->call(ProizvodTableSeeder::class);
        $this->call(OdgovoriTableSeeder::class);
    }
}
