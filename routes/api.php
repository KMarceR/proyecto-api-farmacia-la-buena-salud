<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//para los controladores
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoriasController;
use App\Http\Controllers\DetalleOrdenesPedidoController;
use App\Http\Controllers\DetalleVentaController;
use App\Http\Controllers\EnvioController;
use App\Http\Controllers\OrdenesPedidoController;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\ProveedorController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\VentasController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Rutas protegidas
Route::middleware('auth:sanctum')->group(function () {
    // Rutas para gestionar la tabla Cliente
    Route::get('/cliente/select', [ClienteController::class, 'select']);
    Route::post('/cliente/store', [ClienteController::class, 'store']);
    Route::put('/cliente/update/{id}', [ClienteController::class, 'update']);
    Route::delete('/cliente/delete/{id}', [ClienteController::class, 'delete']);
    Route::get('/cliente/find/{id}', [ClienteController::class, 'find']);

    // Rutas para gestionar la tabla Categorias
    Route::get('/categorias/select', [CategoriasController::class, 'select']);
    Route::post('/categorias/store', [CategoriasController::class, 'store']);
    Route::put('/categorias/update/{id}', [CategoriasController::class, 'update']);
    Route::get('/categorias/find/{id}', [CategoriasController::class, 'find']);
    Route::delete('/categorias/delete/{id}', [CategoriasController::class, 'delete']);

    // Rutas para gestionar la tabla Productos
    Route::get('/productos/select', [ProductosController::class, 'select']);
    Route::post('/productos/store', [ProductosController::class, 'store']);
    Route::put('/productos/update/{id}', [ProductosController::class, 'update']);
    Route::get('/productos/find/{id}', [ProductosController::class, 'find']);
    Route::delete('/productos/delete/{id}', [ProductosController::class, 'delete']);

    // Rutas para gestionar la tabla Proveedores
    Route::get('/proveedor/select', [ProveedorController::class, 'select']);
    Route::post('/proveedor/store', [ProveedorController::class, 'store']);
    Route::put('/proveedor/update/{id}', [ProveedorController::class, 'update']);
    Route::get('/proveedor/find/{id}', [ProveedorController::class, 'find']);
    Route::delete('/proveedor/delete/{id}', [ProveedorController::class, 'delete']);

    // Rutas para gestionar la tabla Detalle_Ordenes_Pedido
    Route::get('/detalle_ordenes_pedido/select', [DetalleOrdenesPedidoController::class, 'select']);
    Route::post('/detalle_ordenes_pedido/store', [DetalleOrdenesPedidoController::class, 'store']);
    Route::put('/detalle_ordenes_pedido/update/{id}', [DetalleOrdenesPedidoController::class, 'update']);
    Route::get('/detalle_ordenes_pedido/find/{id}', [DetalleOrdenesPedidoController::class, 'find']);
    Route::delete('/detalle_ordenes_pedido/delete/{id}', [DetalleOrdenesPedidoController::class, 'delete']);

    // Rutas para gestionar la tabla Detalle_Venta
    Route::get('/detalle_venta/select', [DetalleVentaController::class, 'select']);
    Route::post('/detalle_venta/store', [DetalleVentaController::class, 'store']);
    Route::put('/detalle_venta/update/{id}', [DetalleVentaController::class, 'update']);
    Route::get('/detalle_venta/find/{id}', [DetalleVentaController::class, 'find']);
    Route::delete('/detalle_venta/delete/{id}', [DetalleVentaController::class, 'delete']);

    // Rutas para gestionar la tabla Envio
    Route::get('/envio/select', [EnvioController::class, 'select']);
    Route::post('/envio/store', [EnvioController::class, 'store']);
    Route::put('/envio/update/{id}', [EnvioController::class, 'update']);
    Route::get('/envio/find/{id}', [EnvioController::class, 'find']);
    Route::delete('/envio/delete/{id}', [EnvioController::class, 'delete']);

    // Rutas para gestionar la tabla Orden
    Route::get('/ordenes_pedido/select', [OrdenesPedidoController::class, 'select']);
    Route::post('/ordenes_pedido/store', [OrdenesPedidoController::class, 'store']);
    Route::put('/ordenes_pedido/update/{id}', [OrdenesPedidoController::class, 'update']);
    Route::get('/ordenes_pedido/find/{id}', [OrdenesPedidoController::class, 'find']);
    Route::delete('/ordenes_pedido/delete/{id}', [OrdenesPedidoController::class, 'delete']);

    // Rutas para gestionar la tabla Ventas
    Route::get('/ventas/select', [VentasController::class, 'select']);
    Route::post('/ventas/store', [VentasController::class, 'store']);
    Route::put('/ventas/update/{id}', [VentasController::class, 'update']);
    Route::get('/ventas/find/{id}', [VentasController::class, 'find']);
    Route::delete('/ventas/delete/{id}', [VentasController::class, 'delete']);

    // Rutas para gestionar la tabla Roles
    Route::get('/roles/select', [RolesController::class, 'select']);
    Route::post('/roles/store', [RolesController::class, 'store']);
    Route::put('/roles/update/{id}', [RolesController::class, 'update']);
    Route::get('/roles/find/{id}', [RolesController::class, 'find']);
    Route::delete('/roles/delete/{id}', [RolesController::class, 'delete']);



    // Rutas para gestionar la tabla Pais
    // Route::get('/pais/select', [PaisController::class, 'select' ]);
});

//Rutas para usuario
Route::post('/usuario/register', [UserController::class, 'register']);
Route::post('/usuario/login', [UserController::class, 'login']);
