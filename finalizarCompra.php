<?php 
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();
    $url = unserialize($_GET['url']);
    
    $idCliente = $url[0];
    $idTarjeta = $url[1];
    $idDireccion = $url[2];
    $total = 0;

    $status = [1][$idCliente];
    //Eliminar los articulos del inventario
    $query = "SELECT cantidad, idproducto FROM carrito WHERE idcliente = ${idCliente}";
    $resultado = mysqli_query($db, $query);

    

    while( $articulo = mysqli_fetch_assoc($resultado) ){
        $costo = 0;

        $cantidad = $articulo['cantidad'];
        $id = $articulo['idproducto'];
        $query = "SELECT inventario, precio FROM producto WHERE idProducto = ${id}";
        
        $result = mysqli_query($db, $query);
        $inventario = mysqli_fetch_assoc($result);
        $precio = $inventario['precio'];
        $inventario =  $inventario['inventario'];

        $nuevoInventario = $inventario - $cantidad;
        $costo = $cantidad * $precio;
        $total += $costo;
        
        $query = "UPDATE producto SET inventario = ${nuevoInventario}
        WHERE idproducto = ${id}";
        $result2 = mysqli_query($db, $query);
    }

    

    $fecha = date('Y-m-d H:i:s');

    $query = "INSERT INTO compra (hora, total, idcliente)
    VALUES ('${fecha}', ${total}, ${idCliente})";
    
    $resultado = mysqli_query($db, $query);
    

?>

<main class="contenedor">

    <?php
        $query = "SELECT compra.idcompra, compra.total, compra.hora, cliente.nombre, cliente.apellido, direccion.calle, direccion.nExt, direccion.nInt, direccion.colonia, direccion.municipio, direccion.estado, tarjeta.numero
        FROM compra
        RIGHT JOIN cliente
        ON compra.idcliente  = cliente.idcliente
        RIGHT JOIN tarjeta
        ON compra.idcliente  = tarjeta.idCliente
        Right JOIN direccion
        on cliente.idcliente = direccion.idCliente
        WHERE compra.total = ${total} AND compra.idcliente = ${idCliente} LIMIT 1";

        $resultado = mysqli_query($db, $query);

        $orden = mysqli_fetch_assoc($resultado);
        
        $tarjeta = str_split($orden['numero']);
        $tipo ='';
        $terminacion = $tarjeta['12'].$tarjeta['13'].$tarjeta['14'].$tarjeta['15'];
        if($tarjeta[0] == 4) $tipo = 'Visa';
        if($tarjeta[0] == 5) $tipo = 'MasterCard';

        

        $query = "DELETE FROM carrito WHERE idcliente = ${idCliente}";
        $resultado = mysqli_query($db, $query);
        mysqli_close($db);

    ?>

    <h2>Confirmacion de Compra</h2>
    <form action="index.php" class="confirmacion">
        <fieldset>
            <legend>Detalles de la Orden</legend>
            <p>Orden número <b><?php echo $orden['idcompra'];?></b></p>
            <p>Nombre del receptor: <b><?php echo $orden['nombre']." ".$orden['apellido'];?></b></p>
            <p>Direccion de envio: <b><?php echo $orden['calle']." #".$orden['nExt']."-".$orden['nInt']." ".$orden['colonia']." ".$orden['municipio'].", ".$orden['estado'];?></b></p>
            <p>Fecha de compra: <b><?php echo $orden['hora'];?></b>. Fecha de Entrega: <b><?php echo date("Y-m-d", strtotime("+ 3 day"));?></b> en el transcurso del dia</p>
            <p>Su tarjeta <?php echo $tipo;?> con terminacion <?php echo $terminacion;?> recibira un cargo de $<?php echo $total;?> </p>
        </fieldset>

        
        <a href="index.php" class="boton-finish">Volver al inicio</a>
    </form>
</main>


<?php 
    require('base/footer.php');