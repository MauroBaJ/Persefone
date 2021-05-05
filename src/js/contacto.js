let formulario = document.querySelector('#formulario-contacto');
console.log(formulario);

let main = document.querySelector('#fcont');

let botonContacto = document.querySelector('#enviar-contacto');
botonContacto.addEventListener('click', function(e){
    e.preventDefault();
    
    //Contenedor padre
    container = document.createElement('DIV');

    //Elementos
    title = document.createElement('H2');
    title.textContent = 'Gracias por dejar tus datos';

    paragraph = document.createElement('p');
    paragraph.textContent = `Nos comunicaremos contigo a la brevedad. Recuerda que contamos con soluciones personalizadas para tu hogar y negocio. Uno de nuestros expertos se pondrá en contacto contigo en las próximas 48 horas.`;


    formulario.classList.add('hide-from-view');

    container.appendChild(title);
    container.appendChild(paragraph);
    container.classList.add('formmsg');

    main.appendChild(container);
});
