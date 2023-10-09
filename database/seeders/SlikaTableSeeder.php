<?php

namespace Database\Seeders;

use App\Models\Slika;
use App\Models\TipSlike;
use Illuminate\Database\Seeder;

class SlikaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $slika = TipSlike::where('naziv', 'slika')->first()->id;
        $slicica = TipSlike::where('naziv', 'slicica')->first()->id;

        Slika::create([
            'putanja' => 'galaxyA50.webp',
            'opis' => 'Samsung Galaxy A50',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'galaxyA50.png',
            'opis' => 'Samsung Galaxy A50',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'mate20.png',
            'opis' => 'Huawei Mate 20',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'mate20.png',
            'opis' => 'Huawei Mate 20',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'iphoneXS.png',
            'opis' => 'Apple Iphone XS',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'iphoneXS.png',
            'opis' => 'Apple Iphone XS',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'galaxyS20Ultra.webp',
            'opis' => 'Samsung Galaxy S20 Ultra',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'galaxyS20Ultra.png',
            'opis' => 'Samsung Galaxy S20 Ultra',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'galaxyS10Lite.webp',
            'opis' => 'Samsung Galaxy S10 Lite',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'galaxyS10Lite.webp',
            'opis' => 'Samsung Galaxy S10 Lite',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'galaxyA71.png',
            'opis' => 'Samsung Galaxy A71',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'galaxyA71.png',
            'opis' => 'Samsung Galaxy A71',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'galaxyNote10+.png',
            'opis' => 'Samsung Galaxy Note10+',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'galaxyNote10+.png',
            'opis' => 'Samsung Galaxy Note10+',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'p30.png',
            'opis' => 'Huawei P30',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'p30.png',
            'opis' => 'Huawei P30',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'p20Lite.png',
            'opis' => 'Huawei P20 Lite',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'p20Lite.png',
            'opis' => 'Huawei P20 Lite',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'iphone11Pro.webp',
            'opis' => 'Apple Iphone 11 Pro',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'iphone11Pro.png',
            'opis' => 'Apple Iphone 11 Pro',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'iphone7.jpg',
            'opis' => 'Apple Iphone 7',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'iphone7.jpg',
            'opis' => 'Apple Iphone 7',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'pSmartZ.png',
            'opis' => 'Huawei P smart Z',
            'id_tip_slike' => $slika
        ]);
        Slika::create([
            'putanja' => 'pSmartZ.png',
            'opis' => 'Huawei P smart Z',
            'id_tip_slike' => $slicica
        ]);
        Slika::create([
            'putanja' => 'honor8X.png',
            'opis' => 'Huawei Honor8X',
            'id_tip_slike' => $slika
        ]);

    }
}
