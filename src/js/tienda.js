function cargarTienda() {
    const galeria = document.querySelector('.galeria-imagenes');
    for (let i = 1; i <= 3; i++) {
        const imagen = document.createElement('IMG');
        imagen.src = `build/img/articulos/thumb/${i}.jpeg`;
        imagen.dataset.imagenId = i;
        // imagen.onclick = mostrarImagen;

        //Contenedor del texto
        const contenedor = document.createElement('DIV');
        const titulo = document.createElement('H4');
        const descripcion = document.createElement('P');
        const boton = document.createElement('A');

        titulo.textContent = `Test product #${i}`;
        descripcion.textContent = "lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in libero faucibus, pharetra erat id, convallis risus. "
        boton.textContent = 'Ver articulo';

        contenedor.classList.add('contenedor-articulo');
        titulo.classList.add('titulo-articulo');
        descripcion.classList.add('descripcion-articulo');
        boton.classList.add('boton-tienda');

        contenedor.appendChild(titulo);
        contenedor.appendChild(descripcion);
        contenedor.appendChild(boton);

        const lista = document.createElement('LI');
        lista.appendChild(imagen);
        lista.appendChild(contenedor);
        galeria.appendChild(lista);
    }

}
