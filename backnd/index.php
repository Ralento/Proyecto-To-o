<?php

$serviodr = "localhost";
$usuario = "root";
$clave = "";
$basededatos = "a";
$enlace = mysqli_connect ($serviodr, $usuario, $clave, $basededatos);

if(isset($_POST['registro'])){
    $nombre =  $_POST ['nombre'];
    $correo =  $_POST ['correo'];
    $telefono =  $_POST ['telefono'];
    $insertarDtos = "INSERT INTO datos VALUES('$nombre', '$correo', '$telefono', '')";
    $ejecutarInsertar = mysqli_query ($enlace, $insertarDtos);
}

?>