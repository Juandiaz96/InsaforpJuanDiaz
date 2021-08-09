<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTcMunicipioTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tc_municipio', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre',50);
            $table->boolean('estado')->default(true);
            $table->integer('departamento_id')->unsigned();
            $table->foreign('departamento_id')->references('id')->on('tc_departamento');
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
        Schema::dropIfExists('tc_municipio');
    }
}
