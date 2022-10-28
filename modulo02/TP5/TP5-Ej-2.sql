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