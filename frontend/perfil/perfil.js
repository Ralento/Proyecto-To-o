function validateForm() {
    var nombre = document.getElementById("nombre").value;
    var usuario = document.getElementById("usuario").value;
    var correo = document.getElementById("correo").value;
    var telefono = document.getElementById("telefono").value;
    var calorias = document.getElementById("calorias").value;

    if (nombre == "" || usuario == "" || correo == "" || telefono == "" || calorias == "") {
        alert("Todos los campos deben ser llenados.");
        return false;
    }

    if (!validateEmail(correo)) {
        alert("Correo no válido.");
        return false;
    }

    return true;
}

function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}
