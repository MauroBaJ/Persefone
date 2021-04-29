<?php 
    require('base/header.php');
    require('admin/funciones/database.php');
    require('admin/funciones/auth.php');
    $db = conectarDB();

    $errores= []; 
    
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password2 = $_POST['password2'];

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $nombre = mysqli_real_escape_string($db, $_POST['nombre']);
        $apellido = mysqli_real_escape_string($db, $_POST['apellido']);
        $telefono = mysqli_real_escape_string($db, $_POST['telefono']);
        $email = mysqli_real_escape_string($db, $_POST['email']);
        $password = mysqli_real_escape_string($db, $_POST['password']);
        $password2 = mysqli_real_escape_string($db, $_POST['password2']);

        $match = ($password === $password2);

        if(!$match) $errores[] = 'Las contraseñas no coinciden';
        if($nombre === '') $errores[] = 'Debe escribir un nombre';
        if($apellido === '') $errores[] = 'Debe escribir al menos un apellido';
        if($telefono === '') $errores[] = 'Debe escribir un telefono';
        if($email === '') $errores[] = 'Debe escribir un correo electronico';
        if($password === '') $errores[] = 'Debes escribir una contraseña';
        if($password2 === '') $errores[] = 'Debes confirmar tu contraseña';

        //Validar que el correo no este en uso
        $query = "SELECT * FROM administradores WHERE email = '${email}'";
        $resultado = mysqli_query($db, $query);
        $usuario = mysqli_fetch_assoc($resultado);

        $query2 = "SELECT * FROM cliente WHERE email = '${email}'";
        $resultado2 = mysqli_query($db, $query);
        $usuario2 = mysqli_fetch_assoc($resultado);

        if($email = $usuario['email'] || $email = $usuario2['email']) $errores[] = 'Esa direccion de correo ya esta en uso.';

        if(empty($errores)){

            
            $query = "INSERT INTO cliente (nombre, apellido, telefono, email, password) VALUES 
            ('${nombre}', '${apellido}', '${telefono}', '${email}', '${password}')";

            $resultado = mysqli_query($db, $query);
            
            $query = "SELECT * FROM cliente WHERE email = '${email}'";

            $resultado = mysqli_query($db, $query);
            $usuario = mysqli_fetch_assoc($resultado);
            

            mysqli_close($db);
            iniciarSesion(false, $usuario);
        }
    }
?>

<main class="contenedor">

    <?php 
        if(!empty($errores)):
            foreach($errores as $error):
    ?>
        <p class="error"><?php echo $error; ?></p>
    <?php 
            endforeach;
        endif;
    ?>

    <form method="POST" class="formulario-signup">
        <fieldset>
            <legend>Informacion Personal</legend>

            <div class="campo">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" value="<?php echo $_POST['nombre']; ?>">
            </div>
            <div class="campo">
                <label for="apellido">Apellido</label>
                <input type="text" id="apellido" name="apellido" value="<?php echo $_POST['apellido']; ?>">
            </div>
            <div class="campo">
                <label for="telefono">Telefono</label>
                <input type="number" id="telefono" name="telefono" value="<?php echo $_POST['telefono']; ?>">
            </div>
        </fieldset>
        <fieldset>
            <legend>Informacion de inicio de sesion</legend>
            <div class="campo">
                <label for="email">Correo electronico</label>
                <input type="email" id="email" name="email" value="<?php echo $_POST['email']; ?>">
            </div>
            <div class="campo">
                <label for="password">Ingrese una contraseña</label>
                <input type="password" name="password" id="password" >
            </div>
            <div class="campo">
                <label for="password2">Vuelva a ingresar la contraseña</label>
                <input type="password" name="password2" id="password2">
            </div>
        </fieldset>

        <input type="submit" value="Crear cuenta" class="boton-sesion amarillo generic">
    </form>
</main>

<?php 
    mysqli_close($db);
    require('base/footer.php');
?>