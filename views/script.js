function restarCantidad(inputId) {
    const inputCantidad = document.getElementById(inputId);
    let cantidad = parseInt(inputCantidad.value);
    if (cantidad > 1) {
        cantidad--;
        inputCantidad.value = cantidad;
    }
}

function sumarCantidad(inputId) {
    const inputCantidad = document.getElementById(inputId);
    let cantidad = parseInt(inputCantidad.value);
    cantidad++;
    inputCantidad.value = cantidad;
}


function calcularEnvio() {
    const codigoPostalInput = document.getElementById('codigo_postal');
    const codigoPostal = codigoPostalInput.value;
    const costoEnvio = 10;

    const costoEnvioElement = document.getElementById('costo_envio');
    costoEnvioElement.innerText = `Costo de Envío: $${costoEnvio}`;
}
