document.addEventListener('DOMContentLoaded', function(){
    hamburguesa();
    
    const header = document.querySelector('h1');
    switch(header.textContent){
        case 'Tienda':
            cargarTienda();
            break;
        case 'Blog':
            cargarEntradas();
            break;
    }
    
});