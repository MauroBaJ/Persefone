<?php 
    require('../../base/header.php');
    require('../funciones/database.php');

    $db = conectarDB();
?>

    <main class="contenedor">

    <form method="POST" class="formulario-blog">
        <fieldset>
            <legend>Entrada de Blog</legend>

            <label for="titulo">Titulo del articulo</label>
            <input type="text" id="titulo" name="titulo">

            <label for="autor">Autor</label>
            <input type="text" id="autor" name="autor">

            <label for="imagen">Imagen de la entrada</label>
            <input type="file" id="imagen" name="imagen" accept="image/jpeg, image/png">
        </fieldset>
        <fieldset>
            <legend>Escriba aquí el articulo</legend>
            <textarea name="blog" id="blog"></textarea>
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