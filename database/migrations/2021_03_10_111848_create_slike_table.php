<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSlikeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('slike', function (Blueprint $table) {
            $table->id();
            $table->string('putanja', '100');
            $table->string('opis');
            $table->unsignedBigInteger('id_tip_slike');
            $table->timestamps();

            $table->foreign('id_tip_slike')->references('id')->on('tipslike');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('slike');
    }
}
