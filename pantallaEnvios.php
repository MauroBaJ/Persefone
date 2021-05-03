<?php
    require('base/header.php');
    require('admin/funciones/database.php');
    $db = conectarDB();
    $idCC = $_GET['cc'];


?>

<?php
    mysqli_close($db);
    require('base/footer.php');