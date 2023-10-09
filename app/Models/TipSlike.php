<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TipSlike extends Model
{
    use HasFactory;

    protected $fillable = [
      'naziv'
    ];

    protected $table = 'tipslike';
}
