<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetaljiporudzbineTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detaljiporudzbine', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_porudzbina');
            $table->unsignedBigInteger('id_proizvod');
            $table->integer('kolicina');
            $table->timestamps();

            $table->foreign('id_porudzbina')->references('id')->on('porudzbine');
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
        Schema::dropIfExists('detaljiporudzbine');
    }
}
