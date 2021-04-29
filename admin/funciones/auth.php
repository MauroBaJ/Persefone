<?php

function authenticate() : bool{
    session_start();

    $auth = $_SESSION['login'];

    return ($auth)? true: false;
}

function isAdmin(): bool{
    $adm = $_SESSION['admin'];
    return ($adm) ? true : false;
}