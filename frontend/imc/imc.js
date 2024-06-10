function calcularIMC() {
    const peso = document.getElementById('peso').value;
    const altura = document.getElementById('altura').value;

    if (peso && altura) {
        const alturaMetros = altura / 100;
        const imc = (peso / (alturaMetros * alturaMetros)).toFixed(2);
        document.getElementById('imc').textContent = `Tu IMC es ${imc}`;

        // Añadir un campo oculto para el IMC
        let imcInput = document.getElementById('imc_value');
        if (!imcInput) {
            imcInput = document.createElement('input');
            imcInput.type = 'hidden';
            imcInput.name = 'imc';
            imcInput.id = 'imc_value';
            document.getElementById('imccc').appendChild(imcInput);
        }
        imcInput.value = imc;

        // Enviar el formulario
        document.getElementById('imccc').submit();
    } else {
        document.getElementById('imc').textContent = 'Por favor, introduce todos los datos';
    }
}
