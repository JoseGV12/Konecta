# Konecta


README

Consideraciones 

-El ejercicio se realizó con el gestor de base de datos MYSQL y con el servidor local de xampp
-Se debe crear una base de datos con el nombre “” y luego importarla
-Se hizo uso de las librerías Bootstrap 4 y sweet alert 2 para gestionar la visualización del ejercicio y las alertas
-La conexión que se utilizó fue PDO donde el host es localhos, usuario es root y la contraseña es  “”.
-Se utilizó Bootstrap mediante cdn, por lo tanto se requiere de una conexión a internet.
-Las consultas solicitadas se encuentran a continuación y aplicadas a su vez en el aplicativo en la sección de “ventas por producto” y “producto con más stock” según se indica en la guía no respectivamente.

Realizar una consulta que permita conocer cuál es el producto más vendido.
SELECT VENTAS.ID AS ID_VENTA,PRODUCTOS.ID AS ID_PRODUCTO,ID_PRODUCTO,CANTIDAD,COUNT(NOMBRE_PRODUCTO) AS NUMERO_VENTAS,NOMBRE_PRODUCTO,STOCK FROM VENTAS JOIN PRODUCTOS WHERE VENTAS.ID_PRODUCTO=PRODUCTOS.ID GROUP BY NOMBRE_PRODUCTO DESC LIMIT 1


Realizar una consulta que permita conocer cuál es el producto que más stock tiene.
SELECT * FROM PRODUCTOS ORDER BY STOCK DESC LIMIT 1
