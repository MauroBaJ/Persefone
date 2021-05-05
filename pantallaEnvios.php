<?php
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();
    $idCC = $_GET['cc'];
    $errores = [];

    $query = "SELECT idCliente FROM tarjeta WHERE idtarjeta = $idCC";
    $resultado = mysqli_query($db, $query);
    $temp = mysqli_fetch_assoc($resultado);
    $cliente = $temp['idCliente'];
    unset($temp);

    $query = "SELECT * FROM direccion WHERE idCliente = $cliente";
    $resultado = mysqli_query($db, $query);
    if($resultado->num_rows == 0) $tieneDireccion = false;
    else $tieneDireccion = true;
    
    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        if(isset($_POST['iddireccion'])){
            $url = [$cliente, $idCC, $_POST['iddireccion']];
            mysqli_close($db);
            header('Location: finalizarCompra.php?url='.serialize($url));
        }

        if($nInterior === '') $nInterior = 'n/a';

        $calle = mysqli_real_escape_string($db, $_POST['calle']);
        $nExterior = mysqli_real_escape_string($db, $_POST['nExterior']);
        $nInterior = mysqli_real_escape_string($db, $_POST['nInterior']);
        $codigoPostal = mysqli_real_escape_string($db, $_POST['codigoPostal']);
        $colonia = mysqli_real_escape_string($db, $_POST['colonia']);
        $municipio = mysqli_real_escape_string($db, $_POST['municipio']);
        $estado = mysqli_real_escape_string($db, $_POST['estado']);
        $idCliente = mysqli_real_escape_string($db, $cliente);

        //Validaciones
        if($calle === '') $errores[] = 'Debe añadir una calle';
        if($nExterior === '') $errores[] = 'Debe añadir un número Exterior';
        if(strlen($codigoPostal) != 5 ) $errores[] = "Debe añadir un codigo postal de 5 digitos";
        if($colonia === '') $errores[] = 'Debe añadir una colonia';
        if($municipio === '') $errores[] = 'Debe añadir un municipio';
        if($estado === '') $errores[] = 'Debe añadir un estado';
        

        //Si pasaron las validaciones
        if(empty($errores)){
            $calle = strtoupper($calle);
            $municipio = strtoupper($municipio);
            $estado = strtoupper($estado);
            $colonia = strtoupper($colonia);

            $query = "INSERT INTO direccion (calle, nExt, nInt, cp, colonia, municipio, estado, idCliente)
            VALUES ('${calle}', '${nExterior}', '${nInterior}', ${codigoPostal}, '${colonia}',  '${municipio}', '${estado}', ${idCliente})";
            $resultado = mysqli_query($db, $query);

            if($resultado){
                $query = "SELECT iddireccion FROM direccion WHERE calle = '${calle}' AND nExt = '${nExterior}'";
                $resultado = mysqli_query($db, $query);
                $idDir = mysqli_fetch_assoc($resultado);
                $idDir = $idDir['iddireccion'];

                $url = [$cliente, $idCC, $idDir];
                mysqli_close($db);
                header('Location: finalizarCompra.php?url='.serialize($url));
            }
        }
    }

?>

<div class="pantallaPagos">
    <aside class="tarjetas">
        <?php if($tieneDireccion):?>
        <?php while($direccion = mysqli_fetch_assoc($resultado)):?>
        <?php 
            $calle = $direccion['calle'];
            $nExterior = $direccion['nExt'];
            $nInterior = $direccion['nInt'];

            $string = '';
            if($nInterior == 'n/a') $string = $calle.' #'.$nExterior;
            else $string = $calle.' #'.$nExterior.' interior'.$nInterior;
        ?>
        <div class="tarjeta">
            <p><?php echo $string;?></p>
            <form method="POST">
                <input type="hidden" id="iddireccion" name="iddireccion" value="<?php echo $direccion['iddireccion']?>">
                <input type="submit" value="Utilizar esta direccion" class="useCard">
            </form>
        </div>
        <?php endwhile; ?>
        <?php endif;?>
    </aside>

    <main class="contenedor">

    <?php if(!empty($errores)):
            foreach($errores as $error):?>
    <p class="error"><?php echo $error; ?></p>
    <?php   
            endforeach;
        endif;
    ?>
            <form method="POST" class="formulario-tarjeta">
                <legend>Ingrese los datos de su direccion</legend>

                <div class="campo1">
                    <label for="calle">Calle</label>
                    <input type="text" id="calle" 
                    name="calle" value="<?php echo $calle;?>"
                    required>
                </div>
                <div class="campo1">
                    <label for="nExterior">Número Exterior</label>
                    <input type="text" id="nExterior" 
                    name="nExterior" value="<?php echo $nExterior;?>"
                    required>
                    <label for="nInterior">Número Interior</label>
                    <input type="text" id="nInterior" 
                    name="nInterior" value="<?php echo $nInterior;?>">
                </div>
                <div class="campo1">
                    <label for="codigoPostal">Código Postal</label>
                    <input type="number" id="codigoPostal" 
                    name="codigoPostal" value="<?php echo $codigoPostal;?>"
                    required min='00001' max='99999'>
                    <label for="colonia">Colonia</label>
                    <input type="text" id="colonia" 
                    name="colonia" value="<?php echo $colonia;?>">
                </div>
                <div class="campo1">
                    <label for="municipio">Municipio</label>
                    <input type="text" id="municipio" 
                    name="municipio" value="<?php echo $municipio;?>"
                    required>
                    <label for="estado">Estado</label>
                    <input type="text" id="estado" 
                    name="estado" value="<?php echo $estado;?>">
                </div>
                <input type="submit" value="Registrar Direccion" class="button">
            </form>
    </main>
</div>

<?php
    mysqli_close($db);
    require('base/footer.php');
