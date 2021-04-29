<?php
    require('../base/header.php');
    require('funciones/auth.php');
    $auth = authenticate();
    $adm = isAdmin();

    if(!$adm) header('Location : /');

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
    }

    var_dump($_SESSION);

?>



<main class="contenedor">

<p class="resultado-admin"><?php echo $textoResultado; ?></p>

    <div class="contenedor-admin">
    <a href="../admin/internal/editarArticulos.php" class="button">Editar artículos</a>
    <a href="../admin/internal/crearArticulo.php" class="button">Crear articulo</a>
    <a href="#" class="button">Editar Entradas</a>
    <a href="../admin/internal/crearEntrada.php" class="button">Crear entrada</a></div>

</main>

<?php
    require('../base/footer.php');
?>