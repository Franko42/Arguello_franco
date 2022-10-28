USE sistema;
-- Ejercicio 1 --
SELECT apellido FROM empleados;
SELECT apellido FROM empleados GROUP BY apellido HAVING COUNT(*)=1;
SELECT * FROM empleados;
SELECT nombre, apellido From EMPLEADOS;
SELECT  cuil_cuit FROM EMPLEADOS;
SELECT CONCAT(nombre, "_", apellido) FROM empleados ;
SELECT UPPER( CONCAT(nombre, "_", apellido)) FROM empleados ;
SELECT LOWER( CONCAT(nombre, "_", apellido)) FROM empleados ;
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto;
SELECT nombre FROM departamentos ORDER BY nombre ASC ;
SELECT nombre FROM departamentos ORDER BY nombre DESC ;
SELECT apellido, nombre FROM empleados ORDER BY apellido, nombre ;
SELECT apellido, nombre FROM empleados ORDER BY apellido DESC, nombre DESC;
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto LIMIT 3;
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto DESC LIMIT 3;
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 150000;
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto < 200000 AND presupuesto >100000 ;
SELECT nombre, presupuesto FROM departamentos WHERE NOT presupuesto < 200000 OR NOT presupuesto >100000 ;
SELECT * FROM empleados, departamentos WHERE iddepartamento = id_departamento;
SELECT * FROM empleados, departamentos WHERE iddepartamento = id_departamento ORDER BY departamentos.nombre ASC,  empleados.nombre, empleados.apellido;
SELECT departamentos.nombre, empleados.id_departamento FROM empleados, departamentos  WHERE  id_departamento >= 1 AND departamentos.iddepartamento = empleados.id_departamento GROUP BY departamentos.nombre  ;
SELECT departamentos.nombre FROM departamentos, empleados WHERE empleados.cuil_cuit = "27-38382980-3" AND departamentos.iddepartamento = empleados.id_departamento   GROUP BY departamentos.nombre  ;
SELECT departamentos.nombre FROM departamentos, empleados WHERE empleados.nombre = "Pepe" AND empleados.apellido = "Ruiz" AND  departamentos.iddepartamento = empleados.id_departamento   GROUP BY departamentos.nombre  ;
SELECT idemplaedo, cuil_cuit, empleados.nombre, apellido, id_departamento, empleados.estado FROM empleados, departamentos WHERE departamentos.nombre = "I+D" AND departamentos.iddepartamento = empleados.id_departamento ORDER BY empleados.nombre ;
SELECT e.idemplaedo, e.cuil_cuit, e.nombre, e.apellido, e.estado, d.nombre FROM empleados e JOIN departamentos d ON e.id_departamento = d.iddepartamento  WHERE   d.nombre LIKE "Contabilidad" OR d.nombre LIKE "Sistemas" OR d.nombre LIKE  "I+D" ;
SELECT  e.nombre, e.apellido, d.presupuesto FROM empleados e JOIN departamentos d ON e.id_departamento = d.iddepartamento  WHERE NOT  d.presupuesto < "100000" AND d.presupuesto > "200000"  ;


-- Ejercicio 2   --
SELECT * FROM pedidos ORDER BY fecha DESC ;
SELECT * FROM pedidos ORDER BY cantidad DESC LIMIT 2;
SELECT Clientes.id FROM clientes, pedidos WHERE clientes.id = pedidos.id AND cantidad < 0 ;
USE ventas;
SELECT c.id, c.nombre FROM Clientes c JOIN pedidos p ON c.id = p.id_cliente WHERE c.id = p.id_cliente GROUP BY id  ;
SELECT p.id, p.cantidad, p.fecha, p.id_cliente, p.id_vendedor FROM pedidos p JOIN clientes c ON c.id = p.id_cliente WHERE p.fecha LIKE "%2022%" AND p.cantidad > 500 ;
SELECT v.nombre, v.apellido FROM vendedores v WHERE v.comisión  < 0.11  AND    v.comisión  > 0.05;
SELECT v.comisión FROM vendedores v ORDER BY v.comisión DESC LIMIT 1 ; 
SELECT c.id, c.nombre, c.apellido FROM clientes c WHERE  c.cuitcuil != ""  ORDER BY c.nombre;
SELECT c.nombre FROM clientes c WHERE c.nombre LIKE "A%" "n%" OR c.nombre LIKE "P%"  ORDER BY c.nombre  ;
SELECT c.nombre FROM clientes c WHERE c.nombre LIKE "%el" OR  c.nombre LIKE   "%o" GROUP BY c.nombre;
SELECT c.id, c.nombre, c.apellido FROM Clientes c JOIN pedidos p ON c.id = p.id_cliente WHERE c.id = p.id_cliente GROUP BY id ORDER BY c.nombre ;
SELECT * FROM pedidos p JOIN clientes c ON p.id_cliente = c.id  ; 
SELECT * FROM pedidos p JOIN vendedores v ON v.id = p.id_vendedor ORDER BY v.nombre   ; 
SELECT * FROM pedidos p JOIN vendedores v ON v.id = p.id_vendedor JOIN clientes c ON p.id_cliente = c.id;
SELECT c.nombre FROM clientes c JOIN pedidos p ON c.id = p.id_cliente WHERE p.fecha LIKE "%2022%" AND p.cantidad > 30 AND p.cantidad < 100   ;
SELECT v.nombre, v.apellido FROM pedidos p JOIN vendedores v ON v.id = p.id_vendedor JOIN clientes c ON p.id_cliente = c.id WHERE p.id_cliente = c.id AND c.nombre = "María"    ;
SELECT c.nombre FROM pedidos p JOIN vendedores v ON v.id = p.id_vendedor JOIN clientes c ON p.id_cliente = c.id WHERE p.id_cliente = c.id AND v.nombre = "Daniel" GROUP BY c.nombre  ORDER BY c.nombre ;

SELECT * FROM pedidos
-- Ejercicio 2 --




