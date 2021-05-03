<?php
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();

    //Obtener id del cliente
    $query = "SELECT idcliente FROM cliente WHERE email = '${correo}'";
    $resultado = mysqli_query($db, $query);
    $idCliente = mysqli_fetch_assoc($resultado);
    $idCliente = $idCliente['idcliente'];
    

    //Si el cliente ya cuenta con tarjeta
    $tieneTarjeta = false;
    $query = "SELECT * FROM tarjeta WHERE idCliente = ${idCliente}";
    $resultado = mysqli_query($db, $query);
    if($resultado->num_rows == 0) $tieneTarjeta = false;
    else $tieneTarjeta = true;

?>

<div class="pantallaPagos">
    <!--Si el cliente tiene tarjetas-->
    <aside class="tarjetas">
        <?php if($tieneTarjeta):?>
        <?php while($tarjeta = mysqli_fetch_assoc($resultado)):?>
        <?php 
                $numero = array();
                $numero = str_split($tarjeta['numero']);
                $tipo = '';
                $terminacion = $numero[12].$numero[13].$numero[14].$numero[15];

                //Validar tipo
                if($numero[0] == 4) $tipo = 'Visa';
                if($numero[0] == 5) $tipo = 'MasterCard';
                if($numero[0] == 3){
                    if($numero[1] == 4) $tipo = 'Amex';
                    if($numero[1] == 7) $tipo = 'Amex';
                }
            ?>
        <div class="tarjeta">
            <p><?php echo "Tarjeta ${tipo} con terminacion ${terminacion}";?></p>
            <form method="GET">
                <input type="hidden" id="idTarjeta" value="<?php echo $tarjeta['idtarjeta']?>">
                <input type="submit" value="Utilizar esta tarjeta" class="useCard">
            </form>
        </div>
        <?php endwhile; ?>
        <?php endif;?>
    </aside>

    <main class="contenedor">
        <form method="POST" class="formulario-tarjeta">
            <fieldset>
                <legend>Informacion de la tarjeta</legend>

                <div class="campo1">
                    <label for="numero">Numero de la tarjeta</label>
                    <input type="number" id="numero" name="numero">
                </div>
                <div class="campo1">
                    <label for="cvv">CVV de la tarjeta</label>
                    <input type="number" id="cvv" name="cvv">
                </div>
                <div class="campo1">
                    <label for="mes">Mes de Vencimiento</label>
                    <input type="number" id="mes" name="mes"> 
                    <label for="ano">Año de Vencimiento</label>
                    <input type="number" id="ano" name="ano">
                </div>
            </fieldset>
            <input type="submit" value="Registrar Tarjeta">
        </form>
    </main>
</div>

<?php
    require('base/footer.php');