<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eventos', function (Blueprint $table) {
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
            $table->integer('departamento_id')->unsigned();
            $table->foreign('departamento_id')->references('id')->on('departamentos');
            $table->integer('municipio_id')->unsigned();
            $table->foreign('municipio_id')->references('id')->on('municipios');
            $table->integer('modalidad_id')->unsigned();
            $table->foreign('modalidad_id')->references('id')->on('modalidads');
            $table->integer('tipo_costo_id')->unsigned();
            $table->foreign('tipo_costo_id')->references('id')->on('tipo_costos');
            $table->integer('programa_id')->unsigned();
            $table->foreign('programa_id')->references('id')->on('programas');
            $table->integer('facilitador_id')->unsigned();
            $table->foreign('facilitador_id')->references('id')->on('facilitadors');
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
        Schema::dropIfExists('eventos');
    }
}
