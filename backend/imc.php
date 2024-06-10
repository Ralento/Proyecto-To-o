<?php
session_start(); // Iniciar la sesión
require("conexion.php");

// Verificar si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    echo "Error: Usuario no autenticado.";
    exit();
}

// Verificar si se recibieron los datos mediante POST
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['peso']) && isset($_POST['altura']) && isset($_POST['imc'])) {
    // Obtener y escapar los datos
    $peso = $mysqli->real_escape_string($_POST['peso']);
    $altura = $mysqli->real_escape_string($_POST['altura']);
    $imc = $mysqli->real_escape_string($_POST['imc']);
    $userId = $_SESSION['user_id']; // Obtener el ID del usuario desde la sesión

    // Actualizar el IMC en la tabla "usuarios"
    $sql = "UPDATE usuarios SET imc = '$imc' WHERE id = '$userId'";

    // Ejecutar la consulta
    if ($mysqli->query($sql) === TRUE) {
        echo "IMC actualizado exitosamente.";
        echo "<script>alert('Tu IMC es $imc. Serás redirigido al menú.'); window.location.href='/frontend/menu/menu2.html';</script>";
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $mysqli->error;
    }

    // Cerrar la conexión a la base de datos
    $mysqli->close();
} else {
    echo "No se recibieron todos los datos necesarios.";
}
?>
