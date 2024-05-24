function calcularIMC() {
    const peso = document.getElementById('peso').value;
    const altura = document.getElementById('altura').value;

    const alturaMetros = altura / 100; // Convertir la altura a metros
    const imc = peso / (alturaMetros * alturaMetros);

    let clasificacion;

    if (imc < 18.5) {
        clasificacion = 'Bajo peso';
    } else if (imc >= 18.5 && imc < 24.9) {
        clasificacion = 'Peso normal';
    } else if (imc >= 25 && imc < 29.9) {
        clasificacion = 'Sobrepeso';
    } else {
        clasificacion = 'Obesidad';
    }

    document.getElementById('imc').textContent = `Tu IMC es ${imc.toFixed(2)} (${clasificacion})`;
}
