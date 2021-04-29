<?php 

require('base/header.php');

    if ($_GET['send'] == 1) session_destroy();

    var_dump($_SESSION['admin']);

?>

    <main>
        <div class="imagen-main contenedor">
            <div class="darken-image">
                <img src="./build/img/imagenes-sitio/1.jpg" alt="Imagen principal">
            </div>
            <h1>Persefone, Plant care & Lifestyle</h1>
            <p>Conoce todo acerca de como cultivar y cuidar de las plantas endémicas
                del estado de Jalisco. Visita nuestro Blog y compra tus herramientas
                en nuestra tienda.
            </p>
            <a href="blog.php" class="button">Inicia tu experiencia</a>
        </div>
    </main>

    <div class="contenedor imagen-main">
        <div class="darken-image">
            <img loading='lazy' src="./build/img/imagenes-sitio/2.jpg" alt="Imagen BLOG">
        </div>
        <h2>BLOG</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis minus
            veritatis tempore natus quos cum a, officia eveniet iusto quod voluptas
            nesciunt necessitatibus omnis, perferendis nemo earum error! Quibusdam,
            similique.</p>
        <a href="blog.php" class="button">Visita nuestro blog</a>

    </div>
    <div class="contenedor imagen-main">
        <div class="darken-image">
            <img loading='lazy' src="./build/img/imagenes-sitio/3.jpg" alt="Imagen Tienda">
        </div>
        <h2>Nuestra tienda</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro voluptatum
            officiis libero praesentium explicabo eum expedita cupiditate, minus
            quam totam amet iste nobis tempora temporibus illo debitis quisquam magni
            dicta?</p>
        <a href="tienda.php" class="button">Conoce nuestra tienda</a>

    </div>
    <div class="contenedor imagen-main">
        <div class="darken-image">
            <img loading='lazy' src="./build/img/imagenes-sitio/4.jpg" alt="Imagen contacto">
        </div>
        <h2>¿Necesitas atención personalizada?</h2>
        <p>No dudes en contactarnos.</p>
        <a href="contacto.php" class="button">Llena nuestro formulario</a>

    </div>

<?php

require('base/footer.php');
?>