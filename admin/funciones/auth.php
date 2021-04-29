<?php

function loggedIn() : bool{
    session_start();

    $auth = $_SESSION['login'];

    return ($auth)? true: false;
}

function loggedAdmin(){
    session_start();

    $adm = $_SESSION['administrador'];

    return ($adm)? true: false;
}

function iniciarSesion($isAdmin, $usuario) : void {
                      
    session_start();

    $_SESSION['usuario'] = $usuario['email'];
    // $_SESSION['password'] = $usuario['PASSWORD'];
    $_SESSION['login'] = true;

    $_SESSION['administrador'] = ($isAdmin) ? true : false;

    header('Location: /');  
}