document.addEventListener("DOMContentLoaded", function() {
    // Realizar una solicitud AJAX para obtener los datos del usuario
    fetch('perfil.php')
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
            } else {
                document.getElementById('usuario').value = data.usuario;
                document.getElementById('nombre').value = data.nombre;
                document.getElementById('contraseña').value = data.contraseña;
                document.getElementById('correo').value = data.correo;
                document.getElementById('telefono').value = data.telefono;
                document.getElementById('imc').innerText = data.imc;
                document.getElementById('calorias').innerText = data.calorias;
            }
        })
        .catch(error => console.error('Error:', error));
});