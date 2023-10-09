<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKorisniciTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('korisnici', function (Blueprint $table) {
            $table->id();
            $table->string('ime', '20');
            $table->string('prezime', '20');
            $table->string('email', '60');
            $table->string('password', );
            $table->string('adresa', '50')->nullable();
            $table->string('grad', '50')->nullable();
            $table->string('postanski_broj', '10')->nullable();
            $table->string('telefon', '15')->nullable();
            $table->unsignedBigInteger('id_uloga');
            $table->string('kod_aktivacija')->nullable();
            $table->boolean('aktivan')->default(1);

            $table->timestamps();

            $table->foreign('id_uloga')->references('id')->on('uloge');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('korisnici');
    }
}
