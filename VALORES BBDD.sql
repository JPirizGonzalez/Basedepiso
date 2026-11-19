--Insertar nombres en la tabla usuario y comprobar que vaya el auto-increment del ID usuario
INSERT INTO Usuario (Nombre) VALUES 
('Vicente'),
('Laura'),
('Mario'),
('Miguel');

--Insertar tareas en la tabla tareas y comprobar que funcione el auto-increment del ID tarea
INSERT INTO Tareas (Tarea) VALUES 
('Sacar la basura'),
('Limpiar el baño'),
('Barrer y fregar el suelo');

--Asignar tareas en la tabla reparto comprobando que funcione bien y deje repetir tareas si la fecha es diferente
INSERT INTO reparto (ID_tarea, ID_usuario, Fecha) VALUES 
(1, 1, '2026-11-19'), 
(2, 2, '2026-11-19'), 
(3, 3, '2026-11-19'), 
(1, 4, '2026-11-20'), 
(2, 1, '2026-11-20'); 

--Provocar fallo por incorporar dos tareas a la misma persona el mismo dia
INSERT INTO reparto (ID_tarea, ID_usuario, Fecha) VALUES 
(3, 1, '2026-11-19');