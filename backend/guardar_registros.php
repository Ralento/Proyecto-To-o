<?php
session_start();
require 'conexion.php';

$error_message = '';
$login_error = '';
$login_usuario = '';
$login_password = '';

// Variables para mantener los datos ingresados en el registro
$registro_nombre = '';
$registro_usuario = '';
$registro_telefono = '';
$registro_correo = '';
$registro_contraseña = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['registro'])) {
        // Registro de nuevo usuario
        $registro_nombre = $mysqli->real_escape_string($_POST['nombre']);
        $registro_usuario = $mysqli->real_escape_string($_POST['usuario']);
        $registro_telefono = $mysqli->real_escape_string($_POST['telefono']);
        $registro_correo = $mysqli->real_escape_string($_POST['correo']);
        $registro_contraseña = $mysqli->real_escape_string($_POST['contraseña']);

        $checkQuery = "SELECT * FROM usuarios WHERE usuario = '$registro_usuario'";
        $checkResult = $mysqli->query($checkQuery);

        if ($checkResult->num_rows > 0) {
            $error_message = 'El nombre de usuario ya está en uso.';
        } else {
            // Insertar el nuevo usuario
            $query = "INSERT INTO usuarios (nombre, usuario, contraseña, correo, telefono)
                      VALUES ('$registro_nombre', '$registro_usuario', '$registro_contraseña', '$registro_correo', '$registro_telefono')";
            if ($mysqli->query($query)) {
                echo "<script>alert('Registro exitoso.'); window.location.href='/frontend/login/login.html';</script>";
            } else {
                $error_message = "Error en el registro: " . $mysqli->error;
            }
        }
    } elseif (isset($_POST['login'])) {
        // Inicio de sesión
        $login_usuario = $mysqli->real_escape_string($_POST['login_usuario']);
        $login_password = $mysqli->real_escape_string($_POST['login_password']);

        $userQuery = "SELECT * FROM usuarios WHERE usuario = '$login_usuario'";
        $userResult = $mysqli->query($userQuery);

        if ($userResult->num_rows > 0) {
            $user = $userResult->fetch_assoc();
            if ($user['contraseña'] === $login_password) {
                echo "<script>alert('Inicio de sesión exitoso.'); window.location.href='/frontend/menu/menu.html';</script>";
            } else {
                $login_error = 'Contraseña incorrecta.';
            }
        } else {
            $login_error = 'El nombre de usuario no existe.';
        }

        if ($userResult->num_rows == 0 || ($userResult->num_rows > 0 && $user['contraseña'] !== $login_password)) {
            $login_error = 'Nombre de usuario y/o contraseña incorrectos.';
        }
    }
}

$mysqli->close();
?>
