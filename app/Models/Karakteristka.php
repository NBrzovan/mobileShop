<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Karakteristka extends Model
{
    use HasFactory;

    protected $fillable = [
        'naziv'
    ];

    protected $table = 'karakteristike';
}
