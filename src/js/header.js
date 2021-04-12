function hamburguesa(){
    const barras = document.querySelector('.hamburguer');
    const navegacion = document.querySelector('.navegacion-principal');
    barras.addEventListener('click', function(){
        if(navegacion.classList.contains('mostrar')){
            navegacion.classList.remove('mostrar');
        } else navegacion.classList.add('mostrar');
    });

}