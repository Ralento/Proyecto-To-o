function calcularIMC() {
    const peso = document.getElementById('peso').value;
    const altura = document.getElementById('altura').value;

    if (peso && altura) {
        const alturaMetros = altura / 100;
        const imc = (peso / (alturaMetros * alturaMetros)).toFixed(2);
        document.getElementById('imc').textContent = `Tu IMC es ${imc}`;
    } else {
        document.getElementById('imc').textContent = 'Por favor, introduce todos los datos';
    }
}
