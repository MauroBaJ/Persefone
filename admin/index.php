<?php
    require('../base/header.php');

    $resultado = $_GET['resultado'] ?? null;
    $textoResultado = '';

    switch($resultado){
        case 1:
            break;
        case 2:
            $textoResultado = 'Producto añadido correctamente';
            break;
    }
?>



<main class="contenedor">

<p class="resultado-admin"><?php echo $textoResultado; ?></p>

    <div class="contenedor-admin">
    <a href="#" class="button">Editar artículos</a>
    <a href="admin/internal/crearArticulo.php" class="button">Crear articulo</a>
    <a href="#" class="button">Editar Entradas</a>
    <a href="#" class="button">Crear entrada</a></div>

</main>

<?php
    require('../base/footer.php');
?>