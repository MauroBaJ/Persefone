<?php
    require('base/header.php');
    require('admin/funciones/database.php');

    $db = conectarDB();

    $query = "SELECT * FROM blog";
    $resultado = mysqli_query($db, $query);
?>
    <section class="nuestro-blog">
        <h1>Blog</h1>
        <h2>En nuestro blog encontrarás los mejores consejos</h2>
        <p>Aprenderás a sembrar, germinar, cuidar, transplantar y cuiltivar diferentes
            especies de plantas endémicas del estado de Jalisco. Nuestros editores son
            expertos en la materia.
        </p>
    </section>

    <main class="entradas contenedor">

        <?php while($entrada = mysqli_fetch_assoc($resultado)): ?>
            <div class="entrada">
                <img src="/images/<?php  echo $entrada['imagen'];?>" alt="Imagen de <?php  echo $entrada['titulo'];?>">
                <h3><?php  echo $entrada['titulo'];?></h3>
                <p><?php 
                    $string = $entrada['texto'];
                    if(strlen($string) > 300){
                        $stringCut = substr($string, 0, 300);
                        $endPoint = strrpos($stringCut, ' ');

                        $string = $endPoint? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                    }
                    echo $string.'...';
                ?></p>
                <a href="entrada.php?id=<?php echo $entrada['idblog']; ?>" class="blog-button button">Leer articulo</a>
            </div>
        <?php endwhile; ?>



        
    </main>




<?php
    require('base/footer.php');
?>