<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Envio extends Model
{
    use HasFactory;

    protected $table = 'envio'; // Nombre de la tabla
    protected $fillable = ['id', 'venta_id','estado_envio','costo_envio','fecha_entrega','empleado_id','direccion'];

    
    public function ventas():HasOne {
        return $this->hasOne(Ventas::class,"id","venta_id");
    }

    public function empleados():HasOne {
        return $this->hasOne(Empleados::class,"id","empleado_id");
    }
}
