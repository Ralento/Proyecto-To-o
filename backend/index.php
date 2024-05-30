<?php
$mysqli = new mysqli("localhost", "root", "", "cp");

if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}

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




<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="/frontend/login/login.css">
  <link rel="shortcut icon" href="/img/icono.jpg" type="image/x-icon">
</head>
<body>
  <form action="/backend/index.php" name="a" method="post">
    <div class="section">
      <div class="container">
        <div class="row full-height justify-content-center">
          <div class="col-12 text-center align-self-center py-5">
            <div class="section pb-5 pt-5 pt-sm-2 text-center">
              <h6 class="mb-0 pb-3"><span>Iniciar Sesión </span><span>Registrarse</span></h6>
              <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
              <label for="reg-log"></label>
              <div class="card-3d-wrap mx-auto">
                <div class="card-3d-wrapper">
                  <div class="card-front">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-4 pb-3">Iniciar sesión</h4>
                        <div class="form-group">
                          <input type="text" class="form-style" placeholder="Usuario" name="login_usuario" value="<?php echo htmlspecialchars($login_usuario); ?>">
                          <i class="input-icon uil uil-at"></i>
                        </div>  
                        <div class="form-group mt-2">
                          <input type="password" class="form-style" placeholder="Contraseña" name="login_password" value="<?php echo htmlspecialchars($login_password); ?>">
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <?php if ($login_error): ?>
                        <div class="form-group mt-2">
                          <p class="text-danger"><?php echo $login_error; ?></p>
                        </div>
                        <?php endif; ?>
                        <input type="submit" class="btn mt-4" value="Login" name="login">
                        <!--<p class="mb-0 mt-4 text-center"><a href="https://www.youtube.com/watch?v=4Lsbg4tq9-Q" class="link">Forgot your password?</a></p>-->
                      </div>
                    </div>
                  </div>
                  <div class="card-back">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-3 pb-3">Registrarse</h4>
                        <div class="form-group">
                          <input type="text" class="form-style" placeholder="Nombre Completo" name="nombre" value="<?php echo htmlspecialchars($registro_nombre); ?>">
                          <i class="input-icon uil uil-user"></i>
                        </div>  
                        <div class="form-group2">
                          <input type="text" class="form-style" placeholder="Nombre de Usuario" name="usuario" value="<?php echo htmlspecialchars($registro_usuario); ?>">
                          <i class="input-icon uil uil-user"></i>
                        </div>
                        <?php if ($error_message): ?>
                        <div class="form-group mt-2">
                          <p class="text-danger"><?php echo $error_message; ?></p>
                        </div>
                        <?php endif; ?>  
                        <div class="form-group mt-2">
                          <input type="text" class="form-style" placeholder="Telefono" name="telefono" value="<?php echo htmlspecialchars($registro_telefono); ?>">
                          <i class="input-icon uil uil-phone"></i>
                        </div>  
                        <div class="form-group mt-2">
                          <input type="email" class="form-style" placeholder="Correo" name="correo" value="<?php echo htmlspecialchars($registro_correo); ?>">
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input type="password" class="form-style" placeholder="Contraseña" name="contraseña" value="<?php echo htmlspecialchars($registro_contraseña); ?>">
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <div class="input-link-combo">
                          <i class="uil uil-arrow-right"></i>
                          <input type="submit" class="btn mt-4" value="Registrarse" name="registro">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
</body>
</html>