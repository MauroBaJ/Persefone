<?php
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();

    //Obtener id del cliente
    $query = "SELECT idcliente FROM cliente WHERE email = '${correo}'";
    $resultado = mysqli_query($db, $query);
    $idCliente = mysqli_fetch_assoc($resultado);
    $idCliente = $idCliente['idcliente'];

    $errores = [];
    

    //Si el cliente ya cuenta con tarjeta
    $tieneTarjeta = false;
    $query = "SELECT * FROM tarjeta WHERE idCliente = ${idCliente}";
    $resultado = mysqli_query($db, $query);
    if($resultado->num_rows == 0) $tieneTarjeta = false;
    else $tieneTarjeta = true;
    

    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        if(isset($_POST['idtarjeta'])) header('Location: pantallaEnvios.php?cc='.$_POST['idtarjeta']);
       
       //Si selecciono esa tarjeta
           $numero = mysqli_real_escape_string($db, $_POST['numero']);
           $cvv = mysqli_real_escape_string($db, $_POST['cvv']);
           $mes = mysqli_real_escape_string($db, $_POST['mes']);
           $ano = mysqli_real_escape_string($db, $_POST['ano']);

           
           if(strlen($numero) != 16) $errores[] = 'Debe ingresar una tarjeta valida';
           if(strlen($cvv) < 3) $errores[] = 'Debe ingresar un cvv';
           if(strlen($cvv) > 4) $errores[] = 'Debe ingresar un cvv valido';
           if($mes === '') $errores[] = 'Debe ingresar un mes';
           if($ano === '') $errores[] = 'Debe ingresar un ano';
           if($mes < 01 || $mes >= 13) $errores[] = 'Debe ingresar un mes del 01 al 12';
           if($mes < 00 || $mes >= 99) $errores[] = 'Debe ingresar un año en formato corto (00-99)';

           if(empty($errores)){
               $fechaVencimiento = $mes.'/'.$ano;

               $query = "INSERT INTO tarjeta (numero, cvv, vencimiento, idCliente)
                        VALUES ('${numero}', '${cvv}', '${fechaVencimiento}',${idCliente})";

                $resultado = mysqli_query($db, $query);

                if($resultado){
                    
                    $query = "SELECT idtarjeta FROM tarjeta WHERE numero = '${numero}'";
                    $resultado = mysqli_query($db, $query);
                    $idCC = mysqli_fetch_assoc($resultado);
                    header('Location: pantallaEnvios.php?cc='.$idCC['idtarjeta']);
                }
           }


       }

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
            <form method="POST">
                <input type="hidden" id="idtarjeta" name="idtarjeta" value="<?php echo $tarjeta['idtarjeta']?>">
                <input type="submit" value="Utilizar esta tarjeta" class="useCard">
            </form>
        </div>
        <?php endwhile; ?>
        <?php endif;?>
    </aside>

    <main class="contenedor">

        <?php if(!empty($errores)): foreach($errores as $error):?>
        <p class="error"><?php echo $error;?></p>
        <?php  endforeach; endif;?>

        <form method="POST" class="formulario-tarjeta">
            <fieldset>
                <legend>Informacion de la tarjeta</legend>

                <div class="campo1">
                    <label for="numero">Numero de la tarjeta</label>
                    <input type="number" id="numero" name="numero" value="<?php echo $_POST['numero'];?>">
                </div>
                <div class="campo1">
                    <label for="cvv">CVV de la tarjeta</label>
                    <input type="number" id="cvv" name="cvv" value="<?php echo $_POST['cvv'];?>" min='001' max='9999'>
                </div>
                <div class="campo1">
                    <label for="mes">Mes de Vencimiento</label>
                    <input type="number" id="mes" name="mes" value="<?php echo $_POST['mes'];?>" min='01' max='12'> 
                    <label for="ano">Año de Vencimiento</label>
                    <input type="number" id="ano" name="ano" value="<?php echo $_POST['ano'];?>" min='00' max='99'>
                </div>
            </fieldset>
            <input type="submit" value="Registrar Tarjeta" class="button">
        </form>
    </main>
</div>

<?php
    require('base/footer.php');