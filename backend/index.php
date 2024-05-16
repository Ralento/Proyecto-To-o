<?php

$serviodr = "localhost";
$usuario = "root";
$clave = "";
$basededatos = "cp";
$enlace = mysqli_connect ($serviodr, $usuario, $clave, $basededatos);


if(isset($_POST['registro'])){
    $nombre =  $_POST ['nombre'];
    $ap =  $_POST ['apellido'];
    $contra =  $_POST ['contraseña'];
    $correo =  $_POST ['correo'];
    $telefono =  $_POST ['telefono'];
    $insertarDtos = "INSERT INTO usuarios VALUES('$nombre', '$ap', '$contra', '$correo', '$telefono', '')";
    $ejecutarInsertar = mysqli_query ($enlace, $insertarDtos);
}
  
?>