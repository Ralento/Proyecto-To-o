<?php

$servidor = "localhost";
$usuario = "root";
$clave = "";
$basededatos = "cp";
$enlace = mysqli_connect($servidor, $usuario, $clave, $basededatos);

if(isset($_POST['registro'])){
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $contraseña = $_POST['contraseña'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $insertarDatos = "INSERT INTO usuarios (nombre, apellido, contraseña, correo, telefono) VALUES ('$nombre', '$apellido', '$contraseña', '$correo', '$telefono')";
    $ejecutarInsertar = mysqli_query($enlace, $insertarDatos);

    if($ejecutarInsertar){
        echo "Registro exitoso.";
    } else {
        echo "Error en el registro: " . mysqli_error($enlace);
    }
}

header("Location: /frontend/login.html");
exit();

?>