<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Navigacija extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'tekst',
        'pozicija'
    ];

    protected $table = 'navigacija';
}
