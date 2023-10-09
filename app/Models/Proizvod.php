<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proizvod extends Model
{
    use HasFactory;

    protected $fillable = [
        'naziv',
        'cena',
        'id_marka'
    ];

    protected $table = 'proizvodi';

    public function slike()
    {
        return $this->belongsToMany(Slika::class, 'slika_proizvod', 'id_proizvod', 'id_slika', 'id')
            ->using(SlikaProizvod::class);
    }

    public function marka()
    {
        return $this->belongsTo(Marka::class, 'id_marka', 'id');
    }

    public function specifikacije()
    {
        return $this->hasMany(Specifikacija::class, 'id_proizvod', 'id');
    }
}
