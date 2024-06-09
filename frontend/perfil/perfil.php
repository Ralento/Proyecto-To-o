<?php
session_start();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Información de Usuario</title>
    <link rel="stylesheet" href="perfil.css">
</head>
<body>
    <div class="container">
        <h2>Editar Información de Usuario</h2>
        <form id="userForm" action="update_data.php" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" value="<?php echo htmlspecialchars($_SESSION['nombre']); ?>" required>
            </div>
            <div class="form-group">
                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" value="<?php echo htmlspecialchars($_SESSION['usuario']); ?>" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" placeholder="Dejar en blanco si no cambia">
            </div>
            <div class="form-group">
                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="correo" value="<?php echo htmlspecialchars($_SESSION['correo']); ?>" required>
            </div>
            <div class="form-group">
                <label for="telefono">Teléfono:</label>
                <input type="tel" id="telefono" name="telefono" value="<?php echo htmlspecialchars($_SESSION['telefono']); ?>" required>
            </div>
            <div class="form-group">
                <label for="calorias">IMS Calorías:</label>
                <input type="number" id="calorias" name="calorias" value="<?php echo htmlspecialchars($_SESSION['calorias']); ?>" required>
            </div>
            <button type="submit">Actualizar</button>
        </form>
    </div>
    <script src="perfil.js"></script>
</body>
</html>
