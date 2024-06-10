<?php
require("conexion.php");
session_start();

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['error' => 'Error: Usuario no autenticado.']);
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Obtener los datos del usuario
    $query = "SELECT nombre, usuario, contraseña, correo, telefono, IMC, calorias FROM usuarios WHERE id = ?";
    if ($stmt = $conn->prepare($query)) {
        $stmt->bind_param("i", $user_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = $result->fetch_assoc();
        echo json_encode($data);
    } else {
        echo json_encode(['error' => 'Error en la consulta de datos.']);
    }
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Actualizar los datos del usuario
    $nombre = $_POST['nombre'];
    $usuario = $_POST['usuario'];
    $contraseña = $_POST['contraseña'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];

    // Verificar si el nuevo nombre de usuario ya existe
    $query_check = "SELECT id FROM usuarios WHERE usuario = ? AND id != ?";
    if ($stmt = $conn->prepare($query_check)) {
        $stmt->bind_param("si", $usuario, $user_id);
        $stmt->execute();
        $stmt->store_result();
        if ($stmt->num_rows > 0) {
            echo "<script>alert('El nombre de usuario ya existe.'); window.location.href = 'perfil.html';</script>";
            exit();
        }
    }

    // Actualizar los datos del usuario
    $query_update = "UPDATE usuarios SET nombre = ?, usuario = ?, contraseña = ?, correo = ?, telefono = ? WHERE id = ?";
    if ($stmt = $conn->prepare($query_update)) {
        $stmt->bind_param("sssssi", $usuario, $nombre, $contraseña, $correo, $telefono, $user_id);
        if ($stmt->execute()) {
            echo "<script>alert('Cambios guardados exitosamente.'); window.location.href = 'perfil.html';</script>";
        } else {
            echo "<script>alert('Error al guardar los cambios.'); window.location.href = 'perfil.html';</script>";
        }
    } else {
        echo "<script>alert('Error en la consulta de actualización.'); window.location.href = 'perfil.html';</script>";
    }
}
?>
