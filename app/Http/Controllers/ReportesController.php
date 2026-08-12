<?php

namespace App\Http\Controllers;

use App\Models\Empleados;
use App\Models\Proveedor;
use App\Models\Ventas;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportesController extends Controller
{
    public function reporteProveedores()
    {
        try {
            $proveedores = Proveedor::select(
                'proveedor.id',
                'proveedor.nombre_proveedor',
                'proveedor.direccion',
                'proveedor.telefono'
            )->get();

            $pdf = Pdf::loadView('pdf.proveedor', ['data' => $proveedores]);
            $base64Pdf = base64_encode($pdf->output());
            return response()->json([
                'status' => 200,
                'pdf_base64' => $base64Pdf,
            ]);
        } catch (\Throwable $th) {
            return response()->json($th->getMessage(), 500);
        }
    }
    public function reporteEmpleados()
    {
        try {
            $data = Empleados::all();

            $pdf = Pdf::loadView('pdf.empleado', ['data' => $data]);
            $base64Pdf = base64_encode($pdf->output());
            return response()->json([
                'status' => 200,
                'pdf_base64' => $base64Pdf,
            ]);
        } catch (\Throwable $th) {
            return response()->json($th->getMessage(), 500);
        }
    }
    public function reporteProductoMasVendido()
    {
        try {
            $producto = Ventas::join('detalle_venta as dv', 'ventas.id', '=', 'dv.venta_id')
                ->join('productos as p', 'dv.producto_id', '=', 'p.id')
                ->where('ventas.estado_venta', 'COMPLETADA')
                ->select('p.nombre_producto', DB::raw('SUM(dv.cantidad) as total_vendido'))
                ->groupBy('p.id')
                ->orderByDesc(DB::raw('SUM(dv.cantidad)'))
                ->limit(1)
                ->first();

            $pdf = Pdf::loadView('pdf.productomasvendido', compact('producto'));
            $base64Pdf = base64_encode($pdf->output());
            return response()->json([
                'status' => 200,
                'pdf_base64' => $base64Pdf,
            ]);
        } catch (\Throwable $th) {
            return response()->json($th->getMessage(), 500);
        }
    }
}
