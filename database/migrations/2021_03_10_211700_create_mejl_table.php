<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMejlTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mejl', function (Blueprint $table) {
            $table->id();
            $table->string('ime', '20');
            $table->string('prezime', '20');
            $table->string('email', '60');
            $table->string('telefon', '15');
            $table->text('poruka');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mejl');
    }
}
