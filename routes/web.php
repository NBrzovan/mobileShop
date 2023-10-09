<?php

// Login...
Route::post('/registrovanje', 'LoginController@registrovanje')->name('registrovanje');
Route::post('/login', 'LoginController@login')->name('logovanje');
Route::get('/logout', 'LoginController@logout')->name('logout');

// Front...
Route::get('/', 'FrontController@index')->name('index');
Route::get('/proizvodi', 'FrontController@proizvodi')->name('proizvodi-korisnik');
Route::get('/proizvodi/{proizvod}', 'FrontController@prikazProizvoda')->name('prikaz-proizvoda');
Route::get('/autor', 'FrontController@autor')->name('autor-korisnik');
Route::post('/anketa', 'FrontController@anketa')->name('anketa-korisnik');

Route::get('/registracija', 'FrontController@registracija')->name('registracija');
Route::get('/login', 'FrontController@login')->name('login');

// Admin
Route::group(['middleware' => 'admin'], function () {

// Korisnici
    Route::get('/admin/korisnici', 'KorisnikController@index')->name('korsnici-admin');
    Route::get('/admin/korisnici/{korisnik}', 'KorisnikController@show')->name('korsnici-admin-show');
    Route::put('/admin/korisnici/{korisnik}/update', 'KorisnikController@update')->name('korsnici-admin-update');
    Route::get('/admin/korisnici/{korisnik}/delete', 'KorisnikController@delete')->name('korsnici-admin-delete');

// Proizvodi
    Route::get('/admin/proizvodi', 'ProizvodController@index')->name('proizvodi-admin');
    Route::get('/admin/proizvodi/create', 'ProizvodController@create')->name('proizvodi-admin-create');
    Route::post('/admin/proizvodi/store', 'ProizvodController@store')->name('proizvodi-admin-store');
    Route::get('/admin/proizvodi/{proizvod}/delete', 'ProizvodController@delete')->name('proizvodi-admin-delete');
    Route::get('/admin/proizvodi/{id}/edit', 'ProizvodController@edit')->name('proizvodi-admin-edit');
    Route::post('/admin/proizvodi/{id}/update', 'ProizvodController@update')->name('proizvodi-admin-update');
});
//Route::get('/o-', 'FrontController@proizvodi')->name('proizvodi-korisnik');
