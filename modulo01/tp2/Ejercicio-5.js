   let n = prompt("Introduzca cadena", String)
    
   console.log(n.toLowerCase())
    
    mayusminus(n)
        
    
    function mayusminus (n) {

        if(n == n.toUpperCase()  ){
            console.log("La cadena esta en mayusculas")
        }
        

        else if(n == n.toLowerCase()){
            console.log("La cadena esta en minusculas")
        }
        
        
        else {
            console.log("La cadena es mixta")
        }



    }
