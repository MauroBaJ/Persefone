<?php 
    require('../../base/header.php');
    require('../funciones/database.php');

    $db = conectarDB();

    $titulo = $_POST['titulo'];
    $autor = $_POST['autor'];
    $blog = $_POST['blog'];
    

    $errores = [];

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $titulo = mysqli_real_escape_string($db, $_POST['titulo']);
        $autor = mysqli_real_escape_string($db, $_POST['autor']);
        $blog = mysqli_real_escape_string($db, $_POST['blog']);
        $select = mysqli_real_escape_string($db, $_POST['select']);
        $fecha = mysqli_real_escape_string($db, 'CURDATE()');

        if($titulo === '') $errores[] = 'Debe añadir un título';
        if($autor === '') $errores[] = 'Debe añadir un autor';
        if(!strlen($blog) > 50) $errores[]='El blog debe tener al menos 50 caracteres.';
        if($select === '') $errores[] = 'Debe seleccionar una categoria';

        $imagen = $_FILES['imagen'];

        if(!$imagen['name']) $errores[] = 'Debes añadir una imagen';
        if($imagen['error']) var_dump($imagen['error']);
        $medida = 1000*200; 
        if($imagen['size'] > $medida) $errores[] = 'La imagen debe ser menor a 200Kb';

        if(empty($errores)){
            $carpeta = '../../images/';
            //Si no está creada
            if(!is_dir($carpeta)) mkdir($carpeta);
    
    
            //Generar nombre unico
            $nombreIMG = md5(uniqid(rand(), true)).".jpg";
            //Subir imagen
    
            move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$nombreIMG);

            $query = "INSERT INTO blog(imagen, titulo, categoria, Autor, creacion, texto) VALUES ('${nombreIMG}', '${titulo}', ${select}, '${autor}', $fecha, '${blog}')";

            $resultado = mysqli_query($db, $query);

            if($resultado) header('Location: /admin?resultado=4');
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

    <form method="POST" class="formulario-blog" enctype="multipart/form-data" action="/admin/internal/crearEntrada.php">
        <fieldset>
            <legend>Entrada de Blog</legend>

            <label for="titulo">Titulo del articulo</label>
            <input type="text" id="titulo" name="titulo" value="<?php echo $titulo; ?>">

            <label for="autor">Autor</label>
            <input type="text" id="autor" name="autor" value="<?php echo $autor; ?>">

            <label for="imagen">Imagen de la entrada</label>
            <input type="file" id="imagen" name="imagen" 
            accept="image/jpeg, image/png">
        </fieldset>
        <fieldset>
            <legend>Escriba aquí el articulo</legend>
            <textarea name="blog" id="blog"><?php echo $blog; ?></textarea>
        </fieldset>
        <fieldset>
            <legend>Articulos recomendados para el blog</legend>
            <label for="select">Seleccione una categoría</label>
            <select name="select" id="select">
                <option value="">--Seleccione una opcion</option>
                <option value="1">Semillas</option>
                <option value="2">Herramientas</option>
                <option value="3">Macetas</option>
                <option value="4">Miscelaneo</option>
            </select>
        </fieldset>
        <p>Seleccione una categoría de articulos relacionada a la entrada que acaba de escribir. Esto para generar recomendaciones acorde a la entrada.</p>
        <input type="submit" value="Crear Entrada" class="button-send">
    </form>

    </main>


<?php  
    mysqli_close($db);
    require('../../base/footer.php');
?>