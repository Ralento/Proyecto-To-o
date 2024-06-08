// Este script se encargará de gestionar el envío del formulario y la actualización de los datos del perfil.
function guardarPerfil() {
    const nombre = document.getElementById('nombre').value;
    const usuario = document.getElementById('usuario').value;
    const contrasena = document.getElementById('contrasena').value;
    const telefono = document.getElementById('telefono').value;
    const imc = document.getElementById('imc').value;
    const calorias = document.getElementById('calorias').value;

    // Aquí se puede agregar el código para enviar los datos al servidor mediante una solicitud AJAX o Fetch.
    // Por ejemplo:
    fetch('/api/guardarPerfil', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            nombre: nombre,
            usuario: usuario,
            contrasena: contrasena,
            telefono: telefono,
            imc: imc,
            calorias: calorias
        })
    })
    .then(response => response.json())
    .then(data => {
        // Manejar la respuesta del servidor aquí
        if (data.success) {
            alert('Perfil actualizado con éxito.');
        } else {
            alert('Hubo un problema al actualizar el perfil.');
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Hubo un problema al actualizar el perfil.');
    });
}

// Este script se puede utilizar para cargar los datos del perfil cuando se cargue la página.
document.addEventListener('DOMContentLoaded', () => {
    fetch('/api/obtenerPerfil')
        .then(response => response.json())
        .then(data => {
            // Llenar los campos del formulario con los datos del perfil
            document.getElementById('nombre').value = data.nombre;
            document.getElementById('usuario').value = data.usuario;
            document.getElementById('contrasena').value = data.contrasena;
            document.getElementById('telefono').value = data.telefono;
            document.getElementById('imc').value = data.imc;
            document.getElementById('calorias').value = data.calorias;
        })
        .catch(error => console.error('Error al cargar el perfil:', error));
});
