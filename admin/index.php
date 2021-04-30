<?php
    require('../base/header.php');

    if ($_SESSION['administrador'] == false) header('Location: /');

    $resultado = $_GET['resultado'] ?? null;
    $textoResultado = '';

    switch($resultado){
        case 0:
            $textoResultado = 'Producto eliminado correctamente';
            break;
        case 1:
            $textoResultado = 'Producto actualizado correctamente';
            break;
        case 2:
            $textoResultado = 'Producto añadido correctamente';
            break;
        case 4:
            $textoResultado = 'Entrada creada correctamente';
            break;
        case 5:
            $textoResultado = 'Entrada eliminada correctamente';
            break;
        case 6:
            $textoResultado = 'Entrada actualizada correctamente';
            break;
    }

?>



<main class="contenedor">

<p class="resultado-admin"><?php echo $textoResultado; ?></p>

    <div class="contenedor-admin">
    <a href="../admin/internal/editarArticulos.php" class="button">Editar artículos</a>
    <a href="../admin/internal/crearArticulo.php" class="button">Crear articulo</a>
    <a href="../admin/internal/editarEntrada.php" class="button">Editar Entradas</a>
    <a href="../admin/internal/crearEntrada.php" class="button">Crear entrada</a></div>

</main>

<?php
    require('../base/footer.php');
?>