<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Korisnik extends Model
{
    use HasFactory;
    protected $fillable=[
        'ime',
        'prezime',
        'email',
        'password',
        'adresa',
        'grad',
        'postanski_broj',
        'telefon',
        'id_uloga',
        'kod_aktivacija',
        'aktivan'
    ];

    protected $table = 'korisnici';

    public function uloga()
    {
        return $this->belongsTo(Uloge::class, 'id_uloga', 'id');
    }
}
