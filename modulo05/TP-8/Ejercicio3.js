'use strict';
const fs = require('fs');
fs.readFile('personas.json', (err, data) => {
if (err) throw err;
console.log(JSON.stringify(data));
console.log(data);

});

//Stringify convierte data en una cadena de texto JSON
//Muestra los datos originales sin procesamiento ya que en este cason no se utiliza el metodo stringify



