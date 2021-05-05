<?php
    require('base/header.php');
?>
    <main class="contenedor" id="fcont">
        <h1 class="centrar-texto">Contacto</h1>

        <div class="contacto-bg"></div>

        <form class="formulario" id="formulario-contacto">
            <div class="campo">
                <label class="campo__label" for="nombre">Nombre</label>
                <input class="campo__field" type="text" placeholder="Tu Nombre" id="nombre-contacto">
            </div>
            <div class="campo">
                <label class="campo__label" for="email">E-mail</label>
                <input class="campo__field" type="email" placeholder="Tu E-mail" id="email-contacto">
            </div>
            <div class="campo">
                <label class="campo__label" for="mensaje">Mensaje</label>
                <textarea class="campo__field campo__field--textarea" id="mensaje-contacto"></textarea>
            </div>

            <div class="campo">
                <input type="submit" value="Enviar" class="button" id="enviar-contacto">
            </div>
        </form>


    </main>

<?php
require('base/footer.php');
?>