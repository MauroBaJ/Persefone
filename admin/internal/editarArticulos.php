<?php 
    require('../../base/header.php');
    require('../funciones/database.php');

    $db = conectarDB();

    $query = "SELECT * FROM producto";

    $resultado = mysqli_query($db, $query);

    $categoria = '';

    //Eliminar la propiedad

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        $id = $_POST['id'];
        $id = filter_var($id, FILTER_VALIDATE_INT);
        
        if($id){

            //Eliminar foto
            $query = "SELECT imagen FROM producto WHERE idproducto = ${id}";
            $resultado = mysqli_query($db, $query);
            $art = mysqli_fetch_assoc($resultado);
            unlink("images/".$art['imagen']);
            
            //Eliminar articulo
            $query = "DELETE FROM producto WHERE idproducto = ${id}";
            $resultado = mysqli_query($db, $query);

            if($resultado) header('Location: /admin?resultado=0');
        }
    }
?>

<main class="contenedor">
    <table class="tabla-articulos">
        <tr class="cabecera">
            <th>ID</th>
            <th>Imagen</th>
            <th>Nombre</th>
            <th>Descripcion</th>
            <th>Precio</th>
            <th>Inventario</th>
            <th>Categoria</th>
            <th>Accion</th>
        </tr>
        <?php while($articulo = mysqli_fetch_assoc($resultado)): ?>

            <?php

                switch($articulo['tipo']){
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
                <td><?php echo $articulo['idproducto']; ?></td>
                <td><img src="/images/<?php echo $articulo['imagen']; ?>" alt=""></td>
                <td><?php echo $articulo['nombre']; ?></td>
                <td><?php echo $articulo['descripcion']; ?></td>
                <td><?php echo '$'.$articulo['precio']; ?></td>
                <td><?php echo $articulo['inventario'].' disponibles'; ?></td>
                <td><?php echo $categoria; ?></td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $articulo['idproducto'];?>">
                        <input type="submit" class="boton rojo" value="Eliminar">
                    </form>
                    <a href="/admin/internal/actualizarArticulo.php?id=<?php echo $articulo['idproducto'];?>" 
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