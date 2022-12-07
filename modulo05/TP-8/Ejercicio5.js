const fs = require('fs');
const rawdata = fs.readFileSync('./departamentos.json');
var departamento = JSON.parse(rawdata);

function getEmpleados(arreglo) {

    for (let i = 0; i < arreglo["Tecnología"].length; i++) {
        console.log(arreglo["Tecnología"][i]["nombre"] + " " + arreglo["Tecnología"][i]["Puesto"])
    }
}

getEmpleados(departamento);

