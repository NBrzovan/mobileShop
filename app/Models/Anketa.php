<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Anketa extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_odgovor'
    ];

    protected $table = 'anketa';
}
