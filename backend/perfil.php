<?php
require("conexion.php");
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "Error: Usuario no autenticado.";
    exit();
}

$user_id = $_SESSION['user_id'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['delete']) && $_POST['delete'] == '1') {
        // Eliminar el usuario
        $query_delete = "DELETE FROM usuarios WHERE id = ?";
        if ($stmt = $mysqli->prepare($query_delete)) {
            $stmt->bind_param("i", $user_id);
            if ($stmt->execute()) {
                session_destroy();
                echo "<script>alert('Cuenta eliminada exitosamente.'); window.location.href = 'login.php';</script>";
                exit();
            } else {
                echo "<script>alert('Error al eliminar la cuenta.'); window.location.href = 'perfil.php';</script>";
                exit();
            }
        }
    } else {
        // Actualizar los datos del usuario
        $nombre = $_POST['nombre'];
        $usuario = $_POST['usuario'];
        $contraseña = $_POST['contraseña'];
        $correo = $_POST['correo'];
        $telefono = $_POST['telefono'];

        // Verificar si el nuevo nombre de usuario ya existe
        $query_check = "SELECT id FROM usuarios WHERE usuario = ? AND id != ?";
        if ($stmt = $mysqli->prepare($query_check)) {
            $stmt->bind_param("si", $usuario, $user_id);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows > 0) {
                echo "<script>alert('El nombre de usuario ya existe.'); window.location.href = 'perfil.php';</script>";
                exit();
            }
        }

        // Actualizar los datos del usuario
        $query_update = "UPDATE usuarios SET nombre = ?, usuario = ?, contraseña = ?, correo = ?, telefono = ? WHERE id = ?";
        if ($stmt = $mysqli->prepare($query_update)) {
            $stmt->bind_param("sssssi", $nombre, $usuario, $contraseña, $correo, $telefono, $user_id);
            if ($stmt->execute()) {
                echo "<script>alert('Cambios guardados exitosamente.'); window.location.href = 'perfil.php';</script>";
            } else {
                echo "<script>alert('Error al guardar los cambios.'); window.location.href = 'perfil.php';</script>";
            }
        } else {
            echo "<script>alert('Error en la consulta de actualización.'); window.location.href = 'perfil.php';</script>";
        }
    }
}

// Obtener los datos del usuario para mostrar en el formulario
$query = "SELECT nombre, usuario, contraseña, correo, telefono, IMC, calorias FROM usuarios WHERE id = ?";
$data = [];
if ($stmt = $mysqli->prepare($query)) {
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();
    $data = $result->fetch_assoc();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/frontend/perfil/perfil.css">
    <title>Perfil de Usuario</title>
    <script src="/frontend/perfil/perfil.js"></script>
</head>
<body>
    <div class="container">
        <h2>Perfil de Usuario</h2>
        <form action="perfil.php" method="post" id="perfil">
            <table id="profile-table">
                <tr>
                    <th>Usuario</th>
                    <td><input type="text" id="usuario" name="usuario" required value="<?php echo htmlspecialchars($data['usuario']); ?>"></td>
                </tr>
                <tr>
                    <th>Nombre</th>
                    <td><input type="text" id="nombre" name="nombre" required value="<?php echo htmlspecialchars($data['nombre']); ?>"></td>
                </tr>
                <tr>
                    <th>Contraseña</th>
                    <td><input type="password" id="contraseña" name="contraseña" required value="<?php echo htmlspecialchars($data['contraseña']); ?>"></td>
                </tr>
                <tr>
                    <th>Correo</th>
                    <td><input type="email" id="correo" name="correo" required value="<?php echo htmlspecialchars($data['correo']); ?>"></td>
                </tr>
                <tr>
                    <th>Teléfono</th>
                    <td><input type="tel" id="telefono" name="telefono" required value="<?php echo htmlspecialchars($data['telefono']); ?>"></td>
                </tr>
                <tr>
                    <th>IMC</th>
                    <td><?php echo htmlspecialchars($data['IMC']); ?></td>
                </tr>
                <tr>
                    <th>Calorías</th>
                    <td><?php echo htmlspecialchars($data['calorias']); ?></td>
                </tr>
            </table>
            <button type="submit">Guardar Cambios</button>
            <button type="submit" name="delete" value="1" onclick="return confirm('¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer.');">Borrar Usuario</button>
        </form>
        <br>
        <button class="back-button" onclick="window.location.href='/frontend/menu/menu2.html';">Regresar</button>
    </div>
</body>
</html>
