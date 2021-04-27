<?php
    
    function conectarDB() : mysqli{
        $db = mysqli_connect('localhost', 'administrador', 'PersefonePC&L', 'persefone');
        $db->set_charset('utf8');

        if(!$db){
            echo 'Error, no se pudo realizar una conexión a la BD';
            exit;
        }

        return $db;
    }

?>