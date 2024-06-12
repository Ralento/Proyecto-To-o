<?php
require("conexion.php");
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "Error: Usuario no autenticado.";
    exit();
}
// Verificar si se recibieron los datos mediante POST
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['calorias'])) {
    // Obtener y escapar los datos
    $calorias = $mysqli->real_escape_string($_POST['calorias']);
    $userId = $_SESSION['user_id']; // Obtener el ID del usuario desde la sesión

    // Actualizar las calorías en la tabla "usuarios"
    $sql = "UPDATE usuarios SET calorias = '$calorias' WHERE id = '$userId'";

    // Ejecutar la consulta
    if ($mysqli->query($sql) === TRUE) {
        // Cerrar la conexión a la base de datos
        $mysqli->close();

        // Mostrar una alerta con las calorías diarias necesarias
        echo "<script>alert('Calorías diarias necesarias: $calorias kcal. Serás redirigido al menú.'); window.location.href='/frontend/menu/menu2.html';</script>";
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $mysqli->error;
    }
} else {
    echo "No se recibieron todos los datos necesarios.";
}
?>
