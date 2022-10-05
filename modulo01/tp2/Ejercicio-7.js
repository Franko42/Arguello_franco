  var Cadena = prompt("Escriba texto", String);

  invertir(Cadena)

  function invertir(Cadena){
  let anedac =  Cadena.split("").reverse().join(""); 
  console.log("La cadena invertida es ", anedac)

  }           
