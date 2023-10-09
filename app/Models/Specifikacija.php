<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Specifikacija extends Model
{
    use HasFactory;
    protected $fillable=[
        'id_proizvod',
        'id_karakteristika',
        'vrednost'
    ];
    protected $table = 'specifikacije';

    public function karakteristika()
    {
        return $this->belongsTo(Karakteristka::class, 'id_karakteristika', 'id');
    }
}
