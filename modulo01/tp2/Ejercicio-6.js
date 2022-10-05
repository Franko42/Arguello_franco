var e = prompt("introuce palabra", String)
vocalPrimera(e)

function vocalPrimera(e) {
        
        var vocales = ["a", "e", "i", "o", "u"];
        for (let i = 0; i <= e.length; i++) {
                if (vocales.includes(e[i])) {
                console.log("La primera vocal es " + e[i] + " y Está en la posicion " + (i + 1) + ".");
                     i = (e.length + 1);
              }
        } 
}
