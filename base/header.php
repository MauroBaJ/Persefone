<?php
    if(!isset($_SESSION)) session_start();

    $auth = $_SESSION['login'] ?? false;
    $admin = $_SESSION['administrador'] ?? false;

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/build/css/app.css">
    <link rel="preload" href="articulo.php">
    <title>Persefone</title>
</head>

<body>
    <header class="header">
        <div class="logo">
            <a href="/index.php">
                <img src="/build/img/logo/long.png" alt="logo">
            </a>
        </div>
        <img src="/build/img/logo/barras.svg" alt="hamburguer" class="hamburguer">
        <nav class="navegacion-principal">
            <a class='link' href="/index.php">Inicio</a>
            <a class='link' href="/tienda.php">Tienda</a>
            <a class='link' href="/blog.php">Blog</a>
            <a class='link' href="/contacto.php">Contacto</a>
            <?php if(!$auth): ?>
                <a class="link" href="login.php">Iniciar Sesión</a>
            <?php endif; ?>
            <?php if($auth): ?>
                <a class="link" href="/admin/funciones/cerrar-sesion.php">Cerrar Sesión</a>
            <?php endif; ?>
            <?php if($admin): ?>
                <a class="link" href="/admin/index.php">Administrar Sitio</a>
            <?php endif; ?>
            <a href="/carrito.php">
            <img src="/build/img/logo/carro-de-la-compra.svg" alt="Carrito de compras" class="img-carrito">
            </a>
            <!-- <div>Iconos diseñados por <a href="https://www.flaticon.es/autores/bqlqn" title="bqlqn">bqlqn</a> from <a href="https://www.flaticon.es/" title="Flaticon">www.flaticon.es</a></div> -->
        </nav>
    </header>
    
