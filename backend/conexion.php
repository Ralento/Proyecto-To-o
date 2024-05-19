<?php
$mysqli = new mysqli("localhost", "root", "", "cp");

if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}
?>
