<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>Document</title>

    <style>
        h1 {
            color: blue;
        }
    </style>
</head>
<body>
    <h1>CORREO ELECTRÓNICO</h1>
    <p>Este es el primer correo que mandamos con Laravel.</p>

    <p><strong>Nombre:</strong> {{ $datos['nombre'] }}</p>
    <p><strong>Correo:</strong> {{ $datos['correo'] }}</p>
    <p><strong>Mensaje:</strong> {{ $datos['mensaje'] }}</p>
</body>
</html>
