<?php 
    require('base/header.php');
    require('admin/funciones/database.php');

    $db = conectarDB();
    $id = $_GET['id'];

    $query = "SELECT * FROM blog WHERE idblog = ${id}";
    $resultado = mysqli_query($db, $query);

    $entrada = mysqli_fetch_assoc($resultado);

    $imagen = $entrada['imagen'];
    $titulo = $entrada['titulo'];
    $categoria = $entrada['categoria'];
    $autor = $entrada['Autor'];
    $creacion = $entrada['creacion'];
    $texto = $entrada['texto'];
?>

<main class="contenedor">
    <article class="articulo-blog">

        <img src="images/<?php echo $imagen; ?>" alt="Imagen de <?php echo $titulo; ?>">
        <div class="blog-articulo">
        <h2><?php echo $titulo; ?></h2>
        <h4>Creado por: <span><?php echo $autor; ?></span> el <span><?php  echo $creacion; ?></span></h4>

        <p><?php echo $texto; ?></p>
        </div>
    </article>
</main>

<aside class="related">
    <?php
        $query = "SELECT * FROM producto WHERE tipo = ${categoria} LIMIT 5";
        $resultado = mysqli_query($db, $query);
        while($producto = mysqli_fetch_assoc($resultado)):
    ?>
        <div class="related-producto">
            <img src="images/<?php echo $producto['imagen'] ?>" alt="Imagen de <?php echo $producto['titulo']; ?>">
            <div class="related-info">
                <h3><?php echo $producto['nombre']; ?></h3>
                <h4>$<?php echo $producto['precio']; ?></h4>
                <a  class='button-related' href="articulo.php?no=<?php echo $producto['idproducto'];?>">Ver producto</a>
            </div>
        </div>
    <?php endwhile;?>
</aside>

<?php 
    mysqli_close($db);
    require('base/footer.php');
?>

<?php  ?>