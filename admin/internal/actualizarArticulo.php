<?php
    require('../../base/header.php');
    require('../funciones/database.php');

    $db = conectarDB();

    $id = $_GET['id'];
    
    $query = "SELECT * FROM producto WHERE idproducto = ${id}";
    $resultado = mysqli_query($db, $query);
    $producto = mysqli_fetch_assoc($resultado);

    $tipo = $producto['tipo'];
    $nombre = $producto['nombre'];
    $descripcion = $producto['descripcion'];
    $imagen = $producto['imagen'];
    $precio = $producto['precio'];
    $inventario = $producto['inventario'];

    $errores = [];

    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        //Asignacion
        $categoria = mysqli_real_escape_string($db, $_POST['categorias']);
        $nombre = mysqli_real_escape_string($db, $_POST['nombre']);
        $precio = mysqli_real_escape_string($db, $_POST['precio']);
        $descripcion = mysqli_real_escape_string($db, $_POST['descripcion']);
        $inventario = mysqli_real_escape_string($db, $_POST['inventario']);
    
        $imagen = $_FILES['imagen'];
    
        //Validación de campos
        if(!$categoria) $errores[] = 'Debe seleccionar una categoría';
        if(!$nombre) $errores[] = 'Debe añadir un nombre';
        if(!$precio) $errores[] = 'Debe añadir un precio';
        if(!strlen($descripcion) > 30) $errores[]='Debe añadir una descripcion de al menos 30 caracteres';
        if(!$inventario) $errores[] = 'Debe añadir el inventario disponible';
        if(!$imagen['name']) $errores[] = 'Debes añadir una imagen';
        if($imagen['error']) var_dump($imagen['error']);
    
        //Medida de la imagen
        $medida = 1000*200; 
        if($imagen['size'] > $medida) $errores[] = 'La imagen debe ser menor a 200Kb';
    
        if(empty($errores)){
    
            //Carpeta de las imagenes
            $carpeta = '../../images/';
            //Si no está creada
            if(!is_dir($carpeta)) mkdir($carpeta);
    
    
            //Generar nombre unico
            $nombreIMG = md5(uniqid(rand(), true)).".jpg";
            //Subir imagen
    
            move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreIMG);
    
            $query = "UPDATE producto SET
            tipo = ${categoria},
            nombre = '${nombre}',
            precio = ${precio},
            descripcion = '${descripcion}',
            inventario = ${inventario},
            imagen = '${nombreIMG}'
            WHERE idproducto = ${id}";

            echo $query;
    
            //Ejecutar
            $resultado = mysqli_query($db, $query);
    
            //Redireccionar a admin
            if($resultado) header('Location: /admin?resultado=1');
    
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

    <form class="formulario-admin" method="POST" enctype="multipart/form-data" action="/admin/internal/actualizarArticulo.php?id=<?php echo $id;?>">
        <fieldset class="fieldset-admin">
            <legend>Articulo nuevo</legend>

            <div class="container">
                <label for="select">Seleccione una categoria--</label>
                <select name="categorias" id="select">
                    <option value="">--Seleccione una categoria</option>
                    <option value="1">Semillas</option>
                    <option value="2">Herramientas</option>
                    <option value="3">Macetas</option>
                    <option value="4">Miscelaneo</option>
                </select>
            </div>

            <div class="container">
                <label for="nombre">Nombre del articulo</label>
                <input type="text" placeholder="Nombre del articulo" id="nombre" name="nombre" value="<?php echo $nombre;?>">
            </div>
            <div class="container">
                <label for="precio">Precio del articulo</label>
                <input type="number" placeholder="Precio del articulo" id="precio" name="precio" value="<?php echo $precio;?>">
            </div>
            <div class="container">
                <label for="inventario">inventario del articulo</label>
                <input type="number" placeholder="Articulos disponibles (ej. 5)" id="inventario" name="inventario" value="<?php echo $inventario;?>">
            </div>
            <div class="container">
            <label for="imagen">Imagen del articulo</label>
            <input type="file" id="imagen" name="imagen" 
            accept="image/jpeg, image/png">
            <img src="../../images/<?php echo $imagen;?>" alt="Imagen del producto">
            </div>
            <div class="container">
                <label for="descripcion">Descripcion del articulo</label>
                <textarea name="descripcion" id="descripcion" name="descripcion"><?php echo $descripcion;?></textarea>
            </div>
        </fieldset>
        <input type="submit" id="enviar" value="Enviar" class="button-send">
    </form>
</main>
<?php 
    require('../../base/footer.php');
?>