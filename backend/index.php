<?php
$mysqli = new mysqli("localhost", "root", "", "cp");

if ($mysqli->connect_error) {
    die("Conexión fallida: " . $mysqli->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['registro'])) {
    $nombre = $mysqli->real_escape_string($_POST['nombre']);
    $usuario = $mysqli->real_escape_string($_POST['usuario']);
    $telefono = $mysqli->real_escape_string($_POST['telefono']);
    $correo = $mysqli->real_escape_string($_POST['correo']);
    $contraseña = $mysqli->real_escape_string($_POST['contraseña']);

    $query = "INSERT INTO usuarios (nombre, usuario, contraseña, correo, telefono)
              VALUES ('$nombre', '$usuario', '$contraseña', '$correo', '$telefono')";
    if ($mysqli->query($query)) {
        echo "Registro exitoso.";
    } else {
        echo "Error en el registro: " . $mysqli->error;
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
</head>
<body>
  <form action="/backend/index.php" name="a" method="post">
    <div class="section">
      <div class="container">
        <div class="row full-height justify-content-center">
          <div class="col-12 text-center align-self-center py-5">
            <div class="section pb-5 pt-5 pt-sm-2 text-center">
              <h6 class="mb-0 pb-3"><span>Iniciar Sesion </span><span>Registrarse</span></h6>
              <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
              <label for="reg-log"></label>
              <div class="card-3d-wrap mx-auto">
                <div class="card-3d-wrapper">
                  <div class="card-front">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-4 pb-3">Iniciar sesion</h4>
                        <div class="form-group">
                          <input type="text" class="form-style" placeholder="Usuario" name="login_usuario">
                          <i class="input-icon uil uil-at"></i>
                        </div>  
                        <div class="form-group mt-2">
                          <input type="password" class="form-style" placeholder="Contraseña" name="login_password">
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <a href="/frontend/menu/menu.html" class="btn mt-4">Login</a>
                        <!--<p class="mb-0 mt-4 text-center"><a href="https://www.youtube.com/watch?v=4Lsbg4tq9-Q" class="link">Forgot your password?</a></p>-->
                      </div>
                    </div>
                  </div>
                  <div class="card-back">
                    <div class="center-wrap">
                      <div class="section text-center">
                        <h4 class="mb-3 pb-3">Registrarse</h4>
                        <div class="form-group">
                          <input type="text" class="form-style" placeholder="Nombre Completo" name="nombre">
                          <i class="input-icon uil uil-user"></i>
                        </div>  
                        <div class="form-group2">
                          <input type="text" class="form-style" placeholder="Nombre de Usuario" name="usuario">
                          <i class="input-icon uil uil-user"></i>
                        </div>  
                        <div class="form-group mt-2">
                          <input type="text" class="form-style" placeholder="Telefono" name="telefono">
                          <i class="input-icon uil uil-phone"></i>
                        </div>  
                        <div class="form-group mt-2">
                          <input type="email" class="form-style" placeholder="Correo" name="correo">
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input type="password" class="form-style" placeholder="Contraseña" name="contraseña">
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
