let lista = [];
let repetido;
for (let i = 0; i <= 100; i++) {
     while (!lista[i]) {
            repetido = true;
            while (repetido == true) {
                    let random = Math.random();
                    random = random * 100 + 1;
                    random = Math.trunc(random);
                    for (let j = 0; j < lista.length; j++) {
                        if (lista[j] == random) {
                            repetido = true;
                            break;
                        } else {
                            repetido = false;
                        }
                    }
                    lista[i] = random;
                }

            }
        }
document.write(lista)
