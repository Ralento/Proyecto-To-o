<?php


require 'conexion.php';
session_start();
$user_id = $_SESSION['user_id'];

$sql = "SELECT nombre, usuario, correo, telefono, calorias FROM usuarios WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$stmt->bind_result($nombre, $usuario, $correo, $telefono, $calorias);
$stmt->fetch();
$stmt->close();

// Guardar los datos en variables de sesión
$_SESSION['nombre'] = $nombre;
$_SESSION['usuario'] = $usuario;
$_SESSION['correo'] = $correo;
$_SESSION['telefono'] = $telefono;
$_SESSION['calorias'] = $calorias;

// Redirigir al archivo HTML
header("Location: /frontend/perfil/form.php");
exit();
?>


?>