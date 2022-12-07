const fs = require('fs');
const rawdata = fs.readFileSync('./personas.json');
var persona = JSON.parse(rawdata);



function getNombre (arreglo) {
    for (let i = 0; i <arreglo['Personas'].length;i++){
        let arreglos = arreglo['Personas'][i]['Localidad'];
        if (arreglos === 'Posadas'){
            console.log(arreglo['Personas'][i]['nombre']+ ' ' + arreglo['Personas'][i]['Apellido'])
        }
    }
}


getNombre(persona);


