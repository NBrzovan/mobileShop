<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slika extends Model
{
    use HasFactory;

    protected $fillable = [
      'putanja',
      'opis',
      'id_tip_slike'
    ];

    protected $table = 'slike';
}
