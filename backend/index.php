<?php

$mysqli=new mysqli("localhost","root","","cp");

$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$telefono=$_POST['telefono'];
$correo=$_POST['correo'];
$contra=$_POST['contrsaeña'];
$query="INSERT INTO usuarios (nombre, apellido, contraseña, correo, telefono)
        VALUES ('$nombre', '$apellido', '$telefono', '$correo', '$contra')";
$resultado=$mysqli->query($query);

?>