<?php
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();

    //Obtener id del cliente
    $query = "SELECT idcliente FROM cliente WHERE email = '${correo}'";
    $resultado = mysqli_query($db, $query);
    $idCliente = mysqli_fetch_assoc($resultado);
    $idCliente = $idCliente['idcliente'];

    //Eliminar del carrito
    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $idCarrito = $_POST['id'];
        $query = "DELETE FROM carrito WHERE idcarrito = ${idCarrito}";
        $resultado = mysqli_query($db, $query);

        if($resultado) header('Location: carrito.php');
        else $mensaje = 'Ocurrio un error';
    }

    //Obtener carrito del cliente
    $query = "SELECT * FROM carrito WHERE idcliente = ${idCliente}";
    $resultado = mysqli_query($db, $query);

    if($resultado && $resultado->num_rows !== 0 ){
        $query = "SELECT carrito.idcarrito, carrito.idproducto, carrito.cantidad, producto.nombre, producto.precio FROM carrito RIGHT JOIN producto ON carrito.idproducto = producto.idproducto WHERE idcliente = ${idCliente}";
        $resultado = mysqli_query($db, $query);
        $mensaje = 'Su carrito';
        $total = 0;
    }
    else $mensaje = 'No tienes articulos en tu carrito';
?>

<main class="contenedor">

<h2 style="margin: 2rem;"><?php echo $mensaje; ?></h3>

<?php if($mensaje !== 'No tienes articulos en tu carrito'):?>

<table class="tabla-carrito">
    <tr>
        <th class="hidden-mobile">Id del Producto</th>
        <th>Producto</th>
        <th>Cantidad</th>
        <th>Precio unitario</th>
        <th>Precio Total</th>
        <th></th>
    </tr>
    <?php while($articulo = mysqli_fetch_assoc($resultado)):?>
    <tr>
        <td class="hidden-mobile"><?php echo $articulo['idproducto']?></td>
        <td><?php echo $articulo['nombre']?></td>
        <td><?php echo $articulo['cantidad']?></td>
        <td>$<?php echo $articulo['precio']?></td>
        <td>$<?php echo $articulo['precio']*$articulo['cantidad']?></td>
        <td>
            <form action="carrito.php" method="POST">
                <input type="hidden" name="id" value="<?php echo $articulo['idcarrito']?>">
                <input type="submit" value="Eliminar articulo" class="deleteFromCart">
            </form>
        </td>
    </tr>
    <?php 
            $total += $articulo['precio']*$articulo['cantidad'];
        endwhile;
    ?>
</table>
<h3>Total de la orden: $<?php echo $total;?></h3>

<a href="pantallaPagos.php" class="proceedToCheckout">Proceder al pago</a>

<?php endif;?>

</main>

<?php
    mysqli_close($db);
    require('base/footer.php');
?>