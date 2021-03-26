document.addEventListener('DOMContentLoaded', function () {
    console.log('cargado');
    cargarEntradas();
});

function cargarEntradas() {
    const entradas = document.querySelector('.entradas');
    for (let i = 1; i <= 8; i++) {
        const imagen = document.createElement('IMG');
        imagen.src = `build/img/blog/${i}.jpg`;
        imagen.dataset.imagenId = i;
        // imagen.onclick = mostrarImagen;

        const contenedor = document.createElement('DIV');
        const titulo = document.createElement('H3');
        const descripcion = document.createElement('P');
        const boton = document.createElement('A');

        


        titulo.textContent = 'Prueba';
        descripcion.textContent = 'lorem ipsum dolor sit amet ...';
        boton.classList.add('button');
        boton.classList.add('blog-button');
        boton.textContent = 'Leer el artículo';
        boton.href = '#';


        contenedor.appendChild(imagen);
        contenedor.appendChild(titulo);
        contenedor.appendChild(descripcion);
        contenedor.appendChild(boton);
        
        contenedor.classList.add('entrada');

        entradas.appendChild(contenedor);


    }

}