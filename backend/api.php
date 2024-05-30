<?php

$host = "localhost";
$usuario = "root";
$password = "";
$database = "cp";

$conection  = new mysqli($host, $usuario, $password, $database);

if ($conection->connect_error) {
    die("Conexión fallida: " . $conection->connect_error);
}

header("Content-Type: application/json");
$method =  $_SERVER['REQUEST_METHOD'];
print_r($method);



?>