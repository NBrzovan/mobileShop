<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class SlikaProizvod extends Pivot
{
    protected $fillable = [
        'id_slika',
        'id_proizvod'
    ];
    protected $table = 'slika_proizvod';
}
