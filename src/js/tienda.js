document.addEventListener('DOMContentLoaded', function () {
    cargarTienda();
});

function cargarTienda() {
    const galeria = document.querySelector('.galeria-imagenes');
    for (let i = 1; i <= 3; i++) {
        const imagen = document.createElement('IMG');
        imagen.src = `build/img/articulos/thumb/${i}.jpeg`;
        imagen.dataset.imagenId = i;
        // imagen.onclick = mostrarImagen;

        const lista = document.createElement('LI');
        lista.appendChild(imagen);
        galeria.appendChild(lista);
    }

}
