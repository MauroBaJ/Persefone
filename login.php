<?php
    require('base/header.php');
    require('admin/funciones/database.php');

    $db = conectarDB();
    $errores = [];

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $email = mysqli_real_escape_string($db, filter_var($_POST['email'], FILTER_VALIDATE_EMAIL));
        $password = mysqli_real_escape_string($db, $_POST['password']);
        
        if(!$email) $errores[] = "El email es obligatorio";
        if(!$password) $errores[] = "El password es obligatorio";

        if(empty($errores)){
            //Usuario
            $query = "SELECT * FROM administradores WHERE email = '${email}'";
            $resultado = mysqli_query($db, $query);

            $query2 = "SELECT * FROM cliente WHERE email = '${email}'";
            $resultado2 = mysqli_query($db, $query2);
            
            if($resultado->num_rows){
                $usuario = mysqli_fetch_assoc($resultado);

                //Verificar password
                $auth = ($usuario['password'] === $password);
                
                if($auth){
                    if (session_status() === PHP_SESSION_NONE) {
                        session_start();
                    }                    
                    session_start();

                    $_SESSION['usuario'] = $usuario['email'];
                    // $_SESSION['password'] = $usuario['PASSWORD'];
                    $_SESSION['login'] = true;
                    $_SESSION['admin'] = true;
                    

                    mysqli_close($db);
                    header('Location: /admin/index.php');                
                }
                else $errores[] = 'Password incorrecto';
            }
            else if($resultado2->num_rows){
                $usuario = mysqli_fetch_assoc($resultado2);
                
                var_dump($usuario);

                //Verificar password
                $auth = ($password === $usuario['password']);
                
                if($auth){

                    if (session_status() === PHP_SESSION_NONE) {
                        session_start();
                    }                        
                    session_start();

                    $_SESSION['usuario'] = $usuario['email'];
                    // $_SESSION['password'] = $usuario['PASSWORD'];
                    $_SESSION['login'] = true;

                    mysqli_close($db);
                    header('Location: /');                
                }
                else $errores[] = 'Password incorrecto';
             }
            else $errores[] = 'El usuario no existe';
        }
    }
?>

<main>
    <?php
        if(!empty($errores)):
            foreach($errores as $error):
    ?>
        <p class="error"><?php echo $error;?></p>
    <?php
            endforeach;
        endif;
    ?>

<form method="POST" class="formulario-login">
    <fieldset>
        <label for="email">Correo electronico</label>
        <input type="email" id="email" name="email">
    </fieldset>
    <fieldset>
        <label for="password">Contraseña</label>
        <input type="password" id="password" name="password">
    </fieldset>
    <input type="submit" value="Iniciar sesion" class="boton-sesion amarillo">
    <p>o</p>
    <a href="/crearCuenta.php" class="boton-sesion azul">Crear cuenta</a>

</form>

</main>
    

<?php
    mysqli_close($db);
    require('base/footer.php');
?>