<?php

namespace Database\Seeders;

use App\Models\Korisnik;
use App\Models\Uloge;
use Illuminate\Database\Seeder;

class KorisnikTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Uloge::where('naziv', 'admin')->first()->id;
        $korisnik = Uloge::where('naziv', 'korisnik')->first()->id;

        Korisnik::create([
            'ime' => 'Nikola',
            'prezime' => 'Brzovan',
            'email' => 'brzi@gmail.com',
            'password' => md5('neki'),
            'adresa' => 'boulevard of broken dreams',
            'grad' => 'Beograd',
            'postanski_broj' => '11000',
            'telefon' => '063123123',
            'id_uloga' => $admin,
            'kod_aktivacija' => '',
            'aktivan' => 1
        ]);
        Korisnik::create([
            'ime' => 'Pera',
            'prezime' => 'Peric',
            'email' => 'pera@gamil.com',
            'password' => md5('neki'),
            'adresa' => 'Perin put bb',
            'grad' => 'Perograd',
            'postanski_broj' => '123123',
            'telefon' => '231234123',
            'id_uloga' => $korisnik,
            'kod_aktivacija' => '',
            'aktivan' => 1
        ]);
    }
}
