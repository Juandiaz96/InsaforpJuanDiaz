<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Evento extends Model
{
    use HasFactory;
    protected $fillable = ['nombre','descripcion','fecha_inicio','fecha_fin','ubicacion','horas_curso','costo','participantes','cantidad_evaluaciones','contrato','numero_orden_compra','compra_bolsa','item'];
}
