<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnketaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anketa', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_odgovor');
            $table->timestamps();
            $table->foreign('id_odgovor')->references('id')->on('odgovori');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('anketa');
    }
}
