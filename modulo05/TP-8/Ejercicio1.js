const fs = require("fs");
let rawdata = fs.readFileSync("./personas.json");
console.log(JSON.stringify(rawdata));

//La función stringify convierte un objeto o valor de JavaScript en una cadena de texto JSON, opcionalmente reemplaza valores si se indica una función de reemplazo, o si se especifican las propiedades mediante un array de reemplazo.

//El método JSON.parse() analiza una cadena de texto como JSON, transformando opcionalmente el valor producido por el análisis.
