

function hamburguesa(){
    let scrwidth = window.innerWidth;
    const barras = document.querySelector('.hamburguer');
    const navegacion = document.querySelector('.navegacion-principal');
    barras.addEventListener('click', function(){
        if(navegacion.classList.contains('mostrar')){
            navegacion.classList.remove('mostrar');
        }
        else if( scrwidth > 768) navegacion.classList.remove('mostrar');
        else navegacion.classList.add('mostrar');
    });

}