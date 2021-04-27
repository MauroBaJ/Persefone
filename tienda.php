<?php
    require('base/header.php');
    require('admin/funciones/database.php');

    $db = conectarDB();

    $query = "SELECT * FROM producto WHERE inventario > 0";    
    $resultado = mysqli_query($db, $query);
?>

    <section class="galeria contenedor" id="galeria">
        <h1>Tienda</h1>

        <ul class="galeria-imagenes">
        <?php while($articulo = mysqli_fetch_assoc($resultado)): ?>
            <li>
                <div class="contenedor-articulo">
                    <img src="/images/<?php echo $articulo['imagen']; ?>" alt="Imagen del producto">
                    <h4 class="titulo-articulo"><?php echo $articulo['nombre']; ?></h4>
                    <p class="precio-tienda">$<?php echo $articulo['precio']; ?></p>
                    <p class="descripcion-articulo"><?php echo $articulo['descripcion']; ?></p>
                    <a  class='boton-tienda' href="articulo.php?no=<?php echo $articulo['idproducto'];?>">Ver articulo</a>
                </div>
            </li>
        <?php endwhile; ?>
        </ul>
    </section>


<?php
    require('base/footer.php');
?>