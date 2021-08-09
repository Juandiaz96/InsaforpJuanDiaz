<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTmEventoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tm_evento', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre',50);
            $table->string('descripcion',150);
            $table->date('fecha_inicio');
            $table->date('fecha_fin');
            $table->string('ubicacion',200);
            $table->decimal('horas_curso',4,0);
            $table->decimal('costo',4,0);
            $table->decimal('participantes',2,0);
            $table->decimal('cantidad_evaluaciones',2,0);
            $table->string('contrato',15);
            $table->string('numero_orden_compra',15);
            $table->string('compra_bolsa',15);
            $table->string('item',15);
            $table->boolean('estado')->default(true);
            $table->integer('id_departamento')->unsigned();
            $table->foreign('id_departamento')->references('id')->on('tc_departamento');
            $table->integer('id_municipio')->unsigned();
            $table->foreign('id_municipio')->references('id')->on('tc_municipio');
            $table->integer('id_modalidad')->unsigned();
            $table->foreign('id_modalidad')->references('id')->on('tc_modalidad');
            $table->integer('id_tipo_costo')->unsigned();
            $table->foreign('id_tipo_costo')->references('id')->on('tc_tipo_costo');            
            $table->integer('id_programa')->unsigned();
            $table->foreign('id_programa')->references('id')->on('tc_programa');
            $table->integer('id_facilitador')->unsigned();
            $table->foreign('id_facilitador')->references('id')->on('tc_facilitador');            
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
        Schema::dropIfExists('tm_evento');
    }
}
