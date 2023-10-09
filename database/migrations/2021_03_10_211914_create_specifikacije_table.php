<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSpecifikacijeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specifikacije', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_proizvod');
            $table->unsignedBigInteger('id_karakteristika');
            $table->string('vrednost', 255);
            $table->timestamps();

            $table->foreign('id_proizvod')->references('id')->on('proizvodi');
            $table->foreign('id_karakteristika')->references('id')->on('karakteristike');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('specifikacije');
    }
}
