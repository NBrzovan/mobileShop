<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSlikaProizvodTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('slika_proizvod', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('id_proizvod');
            $table->unsignedBigInteger('id_slika');
            $table->timestamps();
            $table->foreign('id_slika')->references('id')->on('slike');
            $table->foreign('id_proizvod')->references('id')->on('proizvodi');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('slika_proizvod');
    }
}
