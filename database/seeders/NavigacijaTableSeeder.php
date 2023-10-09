<?php

namespace Database\Seeders;

use App\Models\Navigacija;
use Illuminate\Database\Seeder;

class NavigacijaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Navigacija::create([
            'name' => 'index',
            'tekst' => 'Početna',
            'pozicija' => 1
        ]);
        Navigacija::create([
            'name' => 'proizvodi-korisnik',
            'tekst' => 'Proizvodi',
            'pozicija' => 2
        ]);
        Navigacija::create([
            'name' => 'autor-korisnik',
            'tekst' => 'Autor',
            'pozicija' => 3
        ]);
//        Navigacija::create([
//            'name' => 'index#oNama',
//            'tekst' => 'O nama',
//            'pozicija' => 3
//        ]);
//        Navigacija::create([
//            'name' => 'index#kontakt',
//            'tekst' => 'Kontakt',
//            'pozicija' => 4
//        ]);
//        Navigacija::create([
//            'name' => 'korpa-korisnik',
//            'tekst' => 'Korpa',
//            'pozicija' => 6
//        ]);
        Navigacija::create([
            'name' => 'login',
            'tekst' => 'Login',
            'pozicija' => 4
        ]);
        Navigacija::create([
            'name' => 'registracija',
            'tekst' => 'Registracija',
            'pozicija' => 5
        ]);
        Navigacija::create([
            'name' => 'logout',
            'tekst' => 'Logout',
            'pozicija' => 6
        ]);
//        Navigacija::create([
//            'name' => 'korisnici-admin',
//            'tekst' => 'Korisnici',
//            'pozicija' => 15
//        ]);
//        Navigacija::create([
//            'name' => 'proizvodi-admin',
//            'tekst' => 'Proizvodi',
//            'pozicija' => 16
//        ]);
//        Navigacija::create([
//            'name' => 'porudzbine-admin',
//            'tekst' => 'Porudžbine',
//            'pozicija' => 8
//        ]);
//        Navigacija::create([
//            'name' => 'mejlovi-admin',
//            'tekst' => 'Mejlovi',
//            'pozicija' => 9
//        ]);
//        Navigacija::create([
//            'name' => 'anketa-admin',
//            'tekst' => 'Anketa',
//            'pozicija' => 10
//        ]);
//        Navigacija::create([
//            'name' => 'proizvodi-admin',
//            'tekst' => 'Proizvodi',
//            'pozicija' => 6
//        ]);
    }
}
