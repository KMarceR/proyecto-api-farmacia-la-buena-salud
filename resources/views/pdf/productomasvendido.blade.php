<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Producto Más Vendido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            text-align: center;
        }
        h1 {
            color: #4CAF50;
        }
        .producto {
            margin-top: 20px;
            font-size: 18px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Reporte de Producto Más Vendido</h1>
        <h2>Farmacia La Buena</h2>

        <div class="producto">
            <h4>Producto Más Vendido</h4>
            @if($producto)
                <table>
                    <tr>
                        <th>Producto</th>
                        <th>Cantidad Vendida</th>
                    </tr>
                    <tr>
                        <td>{{ $producto->nombre_producto }}</td>
                        <td>{{ $producto->total_vendido }}</td>
                    </tr>
                </table>
            @else
                <p>No se encontraron productos vendidos.</p>
            @endif
        </div>
    </div>

</body>
</html>
