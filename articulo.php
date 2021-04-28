<?php
    require('base/header.php');
    require('admin/funciones/database.php');

    $db = conectarDB();
    $id = $_GET['no'];

    $query = "SELECT * FROM producto WHERE idproducto = ${id}";
    $resultado = mysqli_query($db, $query);
    $producto = mysqli_fetch_assoc($resultado);
    $tipo = $producto['tipo'];

    $disponibles = $producto['inventario'];
    $inicio = 1;

    //Se agregó al carrito
    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $elegido = $id;
        $cantidad = $_POST['inventario'];

        
    }
?>
<div class="articulo-tienda">
<main class="contenedor">

    <div class="articulo-principal">
        <section>
        <h2><?php echo $producto['nombre'];?></h2>
        <img class="articulo-imagen" src="/images/<?php echo $producto['imagen']; ?>" alt="">
        </section>
    
        <div class="informacion-articulo">
            <p class="precio">$<?php echo $producto['precio'];?></p>
            <p class="descripcion"><?php echo $producto['descripcion']; ?></p>

            <form method="POST" class="formulario-articulo">
                <fieldset>
                <label for="inventario">Disponibles</label>
                <select name="inventario" id="inventario">
                    <option value="">--Seleccione una cantidad--</option>
                    <?php while($inicio <= $disponibles): ?>
                        <option value="<?php echo $inicio; ?>"><?php echo $inicio; ?></option>
                        <?php $inicio++; ?>
                    <?php endwhile;?>
                </select>
                </fieldset>
                <input type="submit" value="Agregar al carrito" class="boton-carrito">
            </form>
        </div>
    </div>  
</main>
<aside class="sidebar">
        <h3>Artículos Relacionados</h3>
        <?php
            $query = "SELECT * FROM producto WHERE tipo = ${tipo} LIMIT 2";
            $resultado = mysqli_query($db, $query);
            
            while( $articuloRecomendado = mysqli_fetch_assoc($resultado)):
        ?>
    <div class="articulo-recomendado">
        <img class="imagen-recomendado" src="/images/<?php echo $articuloRecomendado['imagen'] ?>" alt="Imagen de <?php echo $articuloRecomendado['nombre'];?>">
        <div class="informacion-recomendado">
            <p class="nombre-recomendado"><?php echo $articuloRecomendado['nombre']; ?></p>
            <p class="precio-recomendado">$<?php echo $articuloRecomendado['precio']; ?></p>
            <a class="ver-recomendado" href="articulo.php?no=<?php echo $articuloRecomendado['idproducto'];?>">Ver articulo</a>
        </div>
            </div>
        <?php endwhile;?>
    </aside>
    </div>



<?php 
mysqli_close($db);
require('base/footer.php');
?>