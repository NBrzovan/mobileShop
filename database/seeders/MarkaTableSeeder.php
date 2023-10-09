<?php

namespace Database\Seeders;

use App\Models\Marka;
use Illuminate\Database\Seeder;

class MarkaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Marka::create(['naziv' => 'Samsung']);
        Marka::create(['naziv' => 'Huawei']);
        Marka::create(['naziv' => 'Apple']);
    }
}
