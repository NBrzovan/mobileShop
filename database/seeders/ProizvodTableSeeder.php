<?php

namespace Database\Seeders;

use App\Models\Karakteristka;
use App\Models\Marka;
use App\Models\Proizvod;
use App\Models\Slika;
use App\Models\SlikaProizvod;
use App\Models\Specifikacija;
use App\Models\TipSlike;
use Illuminate\Database\Seeder;

class ProizvodTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $samsungId = Marka::where('naziv', 'Samsung')->first()->id;
        $huaweiId = Marka::where('naziv', 'Huawei')->first()->id;
        $appleId = Marka::where('naziv', 'Apple')->first()->id;

        $ram = Karakteristka::where('naziv', 'RAM Memorija')->first()->id;
        $ekran = Karakteristka::where('naziv', 'Ekran')->first()->id;
        $interna = Karakteristka::where('naziv', 'Interna Memorija')->first()->id;
        $kamera = Karakteristka::where('naziv', 'Kamera')->first()->id;
        $procesor = Karakteristka::where('naziv', 'Procesor')->first()->id;
        $os = Karakteristka::where('naziv', 'Operativni sistem')->first()->id;
        $baterija = Karakteristka::where('naziv', 'Kapacitet baterije')->first()->id;
        $dimenzija = Karakteristka::where('naziv', 'Dimenzije')->first()->id;
        $tezina = Karakteristka::where('naziv', 'Težina')->first()->id;
        $rezolucija = Karakteristka::where('naziv', 'Rezolucija')->first()->id;
        $boja = Karakteristka::where('naziv', 'Boja')->first()->id;

        $slikaTip = TipSlike::where('naziv', 'slika')->first()->id;
        $slicicaTip = TipSlike::where('naziv', 'slicica')->first()->id;

        // Item 1...
        $item1 = Proizvod::create([
            'naziv' => 'Galaxy A50',
            'cena' => '34990.00',
            'id_marka' => $samsungId
        ]);

        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,4"']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $kamera, 'vrednost' => '25 MP + 8 MP + 5 MP/25 MP']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa Core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex...']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 9.0 (Pie)']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $baterija, 'vrednost' => '4000 mAh']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '158.5 mm x 74.7 mm x 7.7 mm']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $tezina, 'vrednost' => '166 g']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2340 px']);
        Specifikacija::create(['id_proizvod' => $item1->id, 'id_karakteristika' => $boja, 'vrednost' => 'Crna']);

        $item1Slika = Slika::where('opis', 'like', '%Galaxy A50%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item1Slicica = Slika::where('opis', 'like', '%Galaxy A50%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item1->id, 'id_slika' => $item1Slika]);
        SlikaProizvod::create(['id_proizvod' => $item1->id, 'id_slika' => $item1Slicica]);

        // Item 2...
        $item2 =Proizvod::create([
            'naziv' => 'Mate 20',
            'cena' => '74990.00',
            'id_marka' => $huaweiId
        ]);

        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,4" OLED"']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $ram, 'vrednost' => '6GB']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $kamera, 'vrednost' => '40 MP + 20 MP + 5 MP/25 MP']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $procesor, 'vrednost' => 'ARM Octa Core (2 x Cortex-A76 2,6 GHz + 2 x Cortex-A76 1,92 GHz + 4 x Cortex-A55 1,8 GHz)']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 9.0 (Pie)']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $baterija, 'vrednost' => '4200 mAh']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '157.8 X 72.3 X 8.6 mm']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $tezina, 'vrednost' => '189 g']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '3120 x 1440 px']);
        Specifikacija::create(['id_proizvod' => $item2->id, 'id_karakteristika' => $boja, 'vrednost' => 'Blue']);

        $item2Slika = Slika::where('opis', 'like', '%Huawei Mate 20%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item2Slicica = Slika::where('opis', 'like', '%Huawei Mate 20%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item2->id, 'id_slika' => $item2Slika]);
        SlikaProizvod::create(['id_proizvod' => $item2->id, 'id_slika' => $item2Slicica]);

        //item 3...
        $item3=Proizvod::create([
            'naziv' => 'Iphone XS',
            'cena' => '89990.00',
            'id_marka' => $appleId
        ]);

        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $ekran, 'vrednost' => '5,8" Super Retina HD']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $interna, 'vrednost' => '64GB']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $kamera, 'vrednost' => '12 MP + 12 MP/7 MP']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $os, 'vrednost' => 'iOS 12']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $baterija, 'vrednost' => '2658 mAh']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '143.6 mm X 70.9 mm X 7.7 mm']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $tezina, 'vrednost' => '177 g']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '2436 x 1125 px']);
        Specifikacija::create(['id_proizvod' => $item3->id, 'id_karakteristika' => $boja, 'vrednost' => 'Gold']);

        $item3Slika = Slika::where('opis', 'like', '%Apple Iphone XS%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item3Slicica = Slika::where('opis', 'like', '%Apple Iphone XS%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item3->id, 'id_slika' => $item3Slika]);
        SlikaProizvod::create(['id_proizvod' => $item3->id, 'id_slika' => $item3Slicica]);

        //item 4...
        $item4=Proizvod::create([
            'naziv' => 'Galaxy S20 Ultra',
            'cena' => '166990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,9" Quad HD+ Dynamic AMOLED 2x Infinity-O display 3200 x 1440 px HDR10+ sertifikat 120 Hz displej']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $ram, 'vrednost' => '12GB']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $kamera, 'vrednost' => '108 MP + 12 MP + 48 MP/40 MP']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $procesor, 'vrednost' => '7 nm Octa Core 2,73 GHz maksimalna brzina + 2,5 GHz + 2 GHz']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 10']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $baterija, 'vrednost' => '5000 mAh']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '166,9 mm x 76 mm x 8,8 mm']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $tezina, 'vrednost' => '220 g']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '3200 x 1440 px (Quad HD+)']);
        Specifikacija::create(['id_proizvod' => $item4->id, 'id_karakteristika' => $boja, 'vrednost' => 'Kosmic BLACK']);

        $item4Slika = Slika::where('opis', 'like', '%Samsung Galaxy S20 Ultra%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item4Slicica = Slika::where('opis', 'like', '%Samsung Galaxy S20 Ultra%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item4->id, 'id_slika' => $item4Slika]);
        SlikaProizvod::create(['id_proizvod' => $item4->id, 'id_slika' => $item4Slicica]);

        //item5...
        $item5=Proizvod::create([
            'naziv' => 'Galaxy S10 Lite',
            'cena' => '81990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,6" Super AMOLED Plus']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $ram, 'vrednost' => '8GB']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $kamera, 'vrednost' => '48 MP + 12 MP + 5 MP/32 MP']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa Core Brzina: 2,8 GHz, 2,4 GHz, 1,7 GHz']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 10']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $baterija, 'vrednost' => '4500 mAh']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '75,6 mm x 162,5 mm x 8,1 mm']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $tezina, 'vrednost' => '186 g']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2400 px, FHD+']);
        Specifikacija::create(['id_proizvod' => $item5->id, 'id_karakteristika' => $boja, 'vrednost' => 'WHITE']);

        $item5Slika = Slika::where('opis', 'like', '%Samsung Galaxy S10 Lite%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item5Slicica = Slika::where('opis', 'like', '%Samsung Galaxy S10 Lite%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item5->id, 'id_slika' => $item5Slika]);
        SlikaProizvod::create(['id_proizvod' => $item5->id, 'id_slika' => $item5Slicica]);

        //item6...
        $item6=Proizvod::create([
            'naziv' => 'Galaxy A71',
            'cena' => '56990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,7" 76 mm x 163,6 mm x 7,7 mm']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $ram, 'vrednost' => '6GB']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $kamera, 'vrednost' => '64 MP + 12 MP + 5 MP + 5 MP/32 MP']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $procesor, 'vrednost' => '64-bit Octa-core procesor']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $os, 'vrednost' => 'Android']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $baterija, 'vrednost' => '4500 mAh']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '76 mm x 163,6 mm x 7,7 mm']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $tezina, 'vrednost' => '179 g']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2400 px (FHD+)']);
        Specifikacija::create(['id_proizvod' => $item6->id, 'id_karakteristika' => $boja, 'vrednost' => 'GRAY']);

        $item6Slika = Slika::where('opis', 'like', '%Samsung Galaxy A71%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item6Slicica = Slika::where('opis', 'like', '%Samsung Galaxy A71%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item6->id, 'id_slika' => $item6Slika]);
        SlikaProizvod::create(['id_proizvod' => $item6->id, 'id_slika' => $item6Slicica]);

        //item7...
        $item7=Proizvod::create([
            'naziv' => 'Galaxy Note10+',
            'cena' => '119990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,8" Dynamic AMOLED Infinity-O displej']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $ram, 'vrednost' => '12GB']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $interna, 'vrednost' => '256GB']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $kamera, 'vrednost' => '16 MP + 12 MP + 12 MP + 5 MP/10 MP']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $procesor, 'vrednost' => '64-bit Octa-core procesor']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 9.0 (Pie)']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $baterija, 'vrednost' => '4300 mAh']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '76 mm x 163,6 mm x 7,7 mm']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $tezina, 'vrednost' => '196 g']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '3040 x 1440 px']);
        Specifikacija::create(['id_proizvod' => $item7->id, 'id_karakteristika' => $boja, 'vrednost' => 'AURA']);

        $item7Slika = Slika::where('opis', 'like', '%Samsung Galaxy Note10+%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item7Slicica = Slika::where('opis', 'like', '%Samsung Galaxy Note10+%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item7->id, 'id_slika' => $item7Slika]);
        SlikaProizvod::create(['id_proizvod' => $item7->id, 'id_slika' => $item7Slicica]);

        //item8...
        $item8=Proizvod::create([
            'naziv' => 'P30',
            'cena' => '74990.00',
            'id_marka' => $huaweiId
        ]);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,8" Dynamic AMOLED Infinity-O displej']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $ram, 'vrednost' => '6GB']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $kamera, 'vrednost' => '40MP + 16MP + 8MP/32 MP']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $procesor, 'vrednost' => 'HUAWEI Kirin 980 CPU, Octa-core, 2 x Cortex-A76 Based 2.6GHz+ 2 x Cortex-A76 Based 1.92GHz + 4 x Cortex-A55 1.8GHz']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 9.0 (Pie)']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $baterija, 'vrednost' => '3550 mAh']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '76 mm x 163,6 mm x 7,7 mm']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $tezina, 'vrednost' => '165 g']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '2340 x 1080 px']);
        Specifikacija::create(['id_proizvod' => $item8->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item8Slika = Slika::where('opis', 'like', '%Huawei P30%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item8Slicica = Slika::where('opis', 'like', '%Huawei P30%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item8->id, 'id_slika' => $item8Slika]);
        SlikaProizvod::create(['id_proizvod' => $item8->id, 'id_slika' => $item8Slicica]);

        //item9...
        $item9=Proizvod::create([
            'naziv' => 'P20 Lite',
            'cena' => '25990.00',
            'id_marka' => $huaweiId
        ]);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $ekran, 'vrednost' => '5.84" Dynamic AMOLED Infinity-O displej']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $interna, 'vrednost' => '64GB']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $kamera, 'vrednost' => '16 MP + 2 MP/ 16 MP']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa-Core (4x2.36 GHz Cortex-A53 & 4x1.7 GHz Cortex-A53']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 8.0 (Oreo)']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $baterija, 'vrednost' => '3000 mAh']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '148.6 x 71.2 x 7.4 mm']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $tezina, 'vrednost' => '145 g']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '2280 x 1080 px']);
        Specifikacija::create(['id_proizvod' => $item9->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item9Slika = Slika::where('opis', 'like', '%Huawei P20 Lite%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item9Slicica = Slika::where('opis', 'like', '%Huawei P20 Lite%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item9->id, 'id_slika' => $item9Slika]);
        SlikaProizvod::create(['id_proizvod' => $item9->id, 'id_slika' => $item9Slicica]);

        //item10...
        $item10=Proizvod::create([
            'naziv' => 'P smart Z',
            'cena' => '28990.00',
            'id_marka' => $huaweiId
        ]);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,59" TFT LCD (LTPS)']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $interna, 'vrednost' => '64GB']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $kamera, 'vrednost' => '16 MP + 2 MP/ 16 MP']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Hisilicon Kirin 710F']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $os, 'vrednost' => 'EMUI 9.0 (baziran na Android 9)']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $baterija, 'vrednost' => '4000 mAh']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '77,3 mm x 163,5 mm x 8,8 mm']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $tezina, 'vrednost' => '196 g']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '2340 x 1080 px']);
        Specifikacija::create(['id_proizvod' => $item10->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item10Slika = Slika::where('opis', 'like', '%Huawei P smart Z%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item10Slicica = Slika::where('opis', 'like', '%Huawei P smart Z%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item10->id, 'id_slika' => $item10Slika]);
        SlikaProizvod::create(['id_proizvod' => $item10->id, 'id_slika' => $item10Slicica]);

        //item11...
        $item11=Proizvod::create([
            'naziv' => 'Honor 8X',
            'cena' => '26990.00',
            'id_marka' => $huaweiId
        ]);

        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $ekran, 'vrednost' => '6.5"']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $interna, 'vrednost' => '64GB']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $kamera, 'vrednost' => '20 MP+ 2 MP /16 MP']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa Core ARMv8-A, 64 bita, 4x2.2 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $os, 'vrednost' => 'Android 8.1 (Oreo)']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $baterija, 'vrednost' => '3650 mAh']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '7.66 x 16.04 x 0.78 cm']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $tezina, 'vrednost' => '176 g']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2340 px']);
        Specifikacija::create(['id_proizvod' => $item11->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLUE']);

        $item11Slika = Slika::where('opis', 'like', '%Huawei Honor8X%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item11Slicica = Slika::where('opis', 'like', '%Huawei P smart Z%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item11->id, 'id_slika' => $item11Slika]);
        SlikaProizvod::create(['id_proizvod' => $item11->id, 'id_slika' => $item11Slicica]);

        //item12...
        $item12=Proizvod::create([
            'naziv' => 'Galaxy A51',
            'cena' => '44990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,5"']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $ram, 'vrednost' => '4GB']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $interna, 'vrednost' => '128GB']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $kamera, 'vrednost' => '48 MP + 12 MP + 5 MP + 5 MP/32 MP']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa Core Brzina CPU: 2,3 GHz, 1,7 GHz']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $os, 'vrednost' => 'Android']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $baterija, 'vrednost' => '4000 mAh']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '73,6 mm x 158,5 mm x 7,9 mm']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $tezina, 'vrednost' => '172 g']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2400 px']);
        Specifikacija::create(['id_proizvod' => $item12->id, 'id_karakteristika' => $boja, 'vrednost' => 'WHITE']);

        $item12Slika = Slika::where('opis', 'like', '%Samsung Galaxy A71%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item12Slicica = Slika::where('opis', 'like', '%Samsung Galaxy A71%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item12->id, 'id_slika' => $item12Slika]);
        SlikaProizvod::create(['id_proizvod' => $item12->id, 'id_slika' => $item12Slicica]);

        //Item13...
        $item13=Proizvod::create([
            'naziv' => 'iPhone 7',
            'cena' => '49900.00',
            'id_marka' => $appleId
        ]);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $ekran, 'vrednost' => '4.7" Retina HD']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $ram, 'vrednost' => '2GB']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $interna, 'vrednost' => '32GB']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $kamera, 'vrednost' => '12 MP/7 MP']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $os, 'vrednost' => 'iOS 10']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $baterija, 'vrednost' => '1960 mAh']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '138.3 mm x 67.1 mm x 7.1 mm']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $tezina, 'vrednost' => '138 g']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1334 x 750 px']);
        Specifikacija::create(['id_proizvod' => $item13->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item13Slika = Slika::where('opis', 'like', '%Apple Iphone 7%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item13Slicica = Slika::where('opis', 'like', '%Apple Iphone 7%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item13->id, 'id_slika' => $item13Slika]);
        SlikaProizvod::create(['id_proizvod' => $item13->id, 'id_slika' => $item13Slicica]);

        //Item14...
        $item14=Proizvod::create([
            'naziv' => 'iPhone 11 Pro',
            'cena' => '158490.00',
            'id_marka' => $appleId
        ]);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $ekran, 'vrednost' => '5,8" All-screen OLED Super Retina XDR displej']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $ram, 'vrednost' => '2GB']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $interna, 'vrednost' => '64GB']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $kamera, 'vrednost' => '12 MP + 12 MP + 12 MP/12 MP']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $os, 'vrednost' => 'iOS 13']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $baterija, 'vrednost' => '4000 mAh']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '71,4 mm x 144 mm x 8,1 mm']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $tezina, 'vrednost' => '188 g']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '2436 x 1125 px']);
        Specifikacija::create(['id_proizvod' => $item14->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item14Slika = Slika::where('opis', 'like', '%Apple Iphone 11 Pro%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item14Slicica = Slika::where('opis', 'like', '%Apple Iphone 11 Pro%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item14->id, 'id_slika' => $item14Slika]);
        SlikaProizvod::create(['id_proizvod' => $item14->id, 'id_slika' => $item14Slicica]);

        //Item15...
        $item15=Proizvod::create([
            'naziv' => 'iPhone 6s',
            'cena' => '39990.00',
            'id_marka' => $appleId
        ]);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $ekran, 'vrednost' => '4.7"']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $ram, 'vrednost' => '2GB']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $interna, 'vrednost' => '32GB']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $kamera, 'vrednost' => '12 MP/5 MP']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Dual-core']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $os, 'vrednost' => 'iOS 9']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $baterija, 'vrednost' => '1715 mAh']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '138.3 mm x 67.1 mm x 7.1 mm']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $tezina, 'vrednost' => '148 g']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '750 x 1334 px']);
        Specifikacija::create(['id_proizvod' => $item15->id, 'id_karakteristika' => $boja, 'vrednost' => 'SILVER']);

        $item15Slika = Slika::where('opis', 'like', '%Apple Iphone XS%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item15Slicica = Slika::where('opis', 'like', '%Apple Iphone XS%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item15->id, 'id_slika' => $item15Slika]);
        SlikaProizvod::create(['id_proizvod' => $item15->id, 'id_slika' => $item15Slicica]);

        //Item16...
        $item16=Proizvod::create([
            'naziv' => 'Galaxy A80',
            'cena' => '59990.00',
            'id_marka' => $samsungId
        ]);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $ekran, 'vrednost' => '6,7"']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $ram, 'vrednost' => '8GB']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $interna, 'vrednost' => '128 GB']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $kamera, 'vrednost' => '48 MP/8 MP']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $procesor, 'vrednost' => 'Octa Core 2,2 GHz, 1,8 GHz']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $os, 'vrednost' => 'Android']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $baterija, 'vrednost' => '3700 mAh']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $dimenzija, 'vrednost' => '76,5 mm x 165,2 mm x 9,3 mm']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $tezina, 'vrednost' => '220 g']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $rezolucija, 'vrednost' => '1080 x 2400 px']);
        Specifikacija::create(['id_proizvod' => $item16->id, 'id_karakteristika' => $boja, 'vrednost' => 'BLACK']);

        $item16Slika = Slika::where('opis', 'like', '%Samsung Galaxy A50%')->where('id_tip_slike', $slikaTip)->first()->id;
        $item16Slicica = Slika::where('opis', 'like', '%Samsung Galaxy A50%')->where('id_tip_slike', $slicicaTip)->first()->id;

        SlikaProizvod::create(['id_proizvod' => $item16->id, 'id_slika' => $item16Slika]);
        SlikaProizvod::create(['id_proizvod' => $item16->id, 'id_slika' => $item16Slicica]);
    }
}
