<?php 
    require('../../base/header.php');
    require('../funciones/database.php');

    $db = conectarDB();

    $query = "SELECT * FROM blog";

    $resultado = mysqli_query($db, $query);

    $categoria = '';

    //Eliminar la propiedad

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $id = $_POST['id'];
        $id = filter_var($id, FILTER_VALIDATE_INT);
        
        if($id){

            //Eliminar foto
            $query = "SELECT imagen FROM blog WHERE idblog = ${id}";
            $resultado = mysqli_query($db, $query);
            $art = mysqli_fetch_assoc($resultado);
            unlink("images/".$art['imagen']);
            
            //Eliminar articulo
            $query = "DELETE FROM blog WHERE idblog = ${id}";
            $resultado = mysqli_query($db, $query);

            if($resultado) header('Location: /admin?resultado=5');
        }
    }
?>

<main class="contenedor">
    <table class="tabla-articulos">
        <tr class="cabecera">
            <th>ID</th>
            <th>Imagen</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Fecha de Creacion</th>
            <th>Contenido</th>
            <th>Categoria</th>
            <th>Accion</th>
        </tr>
        <?php while($entrada = mysqli_fetch_assoc($resultado)): ?>

            <?php

                switch($entrada['categoria']){
                    case 1:
                        $categoria = 'Semillas';
                        break;
                    case 2:
                        $categoria = 'Herramienta';
                        break;
                    case 3: 
                        $categoria = 'Macetas';
                        break;
                    case 4:
                        $categoria = 'Miscelaneo';
                        break;
                    default:
                        $categoria = 'Miscelaneo';
                        break;
                }
            ?>

            <tr>
                <td><?php echo $entrada['idblog']; ?></td>
                <td><img src="/images/<?php echo $entrada['imagen']; ?>" alt=""></td>
                <td><?php echo $entrada['titulo']; ?></td>
                <td><?php echo $entrada['Autor']; ?></td>
                <td><?php echo $entrada['creacion']; ?></td>
                <td>
                    <?php 
                    $string = $entrada['texto'];
                    if(strlen($string) > 300){
                        $stringCut = substr($string, 0, 300);
                        $endPoint = strrpos($stringCut, ' ');

                        $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                    }
                    echo $string.'...';?>
                </td>
                <td><?php echo $categoria; ?></td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $entrada['idblog'];?>">
                        <input type="submit" class="boton rojo" value="Eliminar">
                    </form>
                    <a href="/admin/internal/actualizarEntrada.php?id=<?php echo $entrada['idblog'];?>" 
                    class="boton amarillo">Actualizar</a>
                </td>
            </tr>
        <?php endwhile; ?>

    </table>
</main>

<?php
    mysqli_close($db);
    require('../../base/footer.php');
?>