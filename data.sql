-- INSERCIÓN DE DATOS DE PRUEBA

-- 1. CLIENTES 
INSERT INTO clientes (dni_cliente, nombre_cliente, apellido_cliente, telefono_cliente, email_cliente) VALUES
('38492019', 'Carlos', 'Gómez', '+541145920192', 'carlos.gomez@email.com'),
('40291823', 'Lucía', 'Fernández', '+541139201928', 'lucia.f@email.com'),
('35192847', 'Mateo', 'Martínez', '+541183920192', 'mateo.m@email.com'),
('42938102', 'Sofia', 'Rodríguez', '+541129381029', 'sofia.rod@email.com'),
('39102938', 'Joaquín', 'López', '+541193820193', 'j.lopez@email.com'),
('37291048', 'Valentina', 'Díaz', '+541149201923', 'valen.diaz@email.com'),
('41920394', 'Lucas', 'Pérez', '+541129384756', 'lucas.perez@email.com'),
('36492018', 'Camila', 'Sánchez', '+541193847261', 'cami.sanchez@email.com'),
('43019283', 'Nicolás', 'Romero', '+541148392019', 'nico.romero@email.com'),
('38102938', 'Martina', 'Torres', '+541129384019', 'marti.torres@email.com');
 
-- 2. HABITACIONES 
INSERT INTO habitaciones (numero_habitacion, tipo_habitacion, precionoche_habitacion, estado_habitacion) VALUES
(101, 'Simple', 45000.00, 'Disponible'),
(102, 'Simple', 45000.00, 'Ocupada'),
(103, 'Doble', 75000.00, 'Disponible'),
(104, 'Doble', 75000.00, 'Mantenimiento'),
(201, 'Suite', 120000.00, 'Ocupada'),
(202, 'Suite', 120000.00, 'Disponible'),
(203, 'Doble Premium', 95000.00, 'Disponible'),
(204, 'Doble Premium', 95000.00, 'Ocupada'),
(301, 'Presidential Suite', 250000.00, 'Disponible'),
(302, 'Presidential Suite', 250000.00, 'Mantenimiento');
 
-- 3. EMPLEADOS
INSERT INTO empleados (dni_empleado, nombre_empleado, apellido_empleado, puesto_empleado, sueldo_empleado) VALUES
('33920192', 'Roberto', 'Benítez', 'Recepcionista', 650000.00),
('34920182', 'Mariana', 'Acosta', 'Recepcionista', 650000.00),
('31029384', 'Gonzalo', 'Herrera', 'Gerente', 1400000.00),
('36920193', 'Laura', 'Giménez', 'Conserje', 580000.00),
('37192038', 'Diego', 'Castro', 'Valet', 520000.00),
('32910293', 'Elena', 'Mendoza', 'Gobernante', 750000.00),
('39102948', 'Agustín', 'Silva', 'Mantenimiento', 600000.00),
('38291039', 'Paula', 'Vargas', 'Recepcionista', 650000.00),
('35920192', 'Esteban', 'Ríos', 'Camarero', 500000.00),
('40192837', 'Florencia', 'Morales', 'Administrativa', 800000.00);
 
-- 4. SERVICIOS 
INSERT INTO servicios (nombre_servicio, descripcion_servicio, precio_servicio) VALUES
('Desayuno Buffet', 'Acceso completo al buffet por persona', 8500.00),
('Spa & Masajes', 'Sesión de masajes descontracturantes de 50 min', 32000.00),
('Estacionamiento', 'Cochera cubierta por día', 12000.00),
('Room Service', 'Servicio de comida a la habitación', 5000.00),
('Traspaso Aeropuerto', 'Traslado privado desde/hacia aeropuerto', 45000.00),
('Lavandería Express', 'Lavado y planchado de hasta 5 prendas', 15000.00),
('Acceso Gimnasio', 'Pase libre diario al gimnasio del hotel', 6000.00),
('Cena Gourmet', 'Menú de 3 pasos en el restaurante principal', 28000.00),
('Alquiler de Bicis', 'Uso de bicicleta urbana por un día', 9000.00),
('Cata de Vinos', 'Experiencia sommelier con 4 etiquetas', 22000.00);
 
-- 5. RESERVAS 
INSERT INTO reservas (id_habitacion_reserva, id_cliente_reserva, id_empleado_reserva, fechaentrada_reserva, fechasalida_reserva, estado_reserva) VALUES
(2, 1, 1, '2026-08-01', '2026-08-05', 'Finalizada'),
(5, 2, 2, '2026-08-10', '2026-08-15', 'Confirmada'),
(1, 3, 1, '2026-08-12', '2026-08-14', 'Confirmada'),
(8, 4, 8, '2026-08-13', '2026-08-18', 'Confirmada'),
(3, 5, 2, '2026-08-20', '2026-08-22', 'Pendiente'),
(6, 6, 1, '2026-09-01', '2026-09-07', 'Pendiente'),
(7, 7, 8, '2026-09-05', '2026-09-10', 'Pendiente'),
(9, 8, 2, '2026-09-15', '2026-09-20', 'Pendiente'),
(4, 9, 1, '2026-07-10', '2026-07-12', 'Cancelada'),
(10, 10, 8, '2026-07-15', '2026-07-18', 'Finalizada');
 
-- 6. PAGOS 
INSERT INTO pagos (id_reserva_pago, monto_pago, fecha_pago, metodopago_pago) VALUES
(1, 180000.00, '2026-08-01', 'Tarjeta de Crédito'),
(2, 600000.00, '2026-08-05', 'Transferencia Bancaria'),
(3, 90000.00,  '2026-08-12', 'Efectivo'),
(4, 475000.00, '2026-08-13', 'Tarjeta de Débito'),
(5, 150000.00, '2026-08-15', 'Tarjeta de Crédito'),
(6, 720000.00, '2026-08-20', 'Transferencia Bancaria'),
(7, 475000.00, '2026-08-22', 'Tarjeta de Crédito'),
(8, 1250000.00,'2026-08-25', 'Mercado Pago'),
(9, 0.00,      '2026-07-10', 'Sin Pago'),
(10, 750000.00,'2026-07-15', 'Tarjeta de Crédito');
 
-- 7. SERVICIO X RESERVA 
INSERT INTO servicioxreserva (id_servicio_sxr, id_reserva_sxr, fechaservicio_sxr, cantidad_sxr) VALUES
(1, 1, '2026-08-02', 2),
(3, 1, '2026-08-01', 4),
(2, 2, '2026-08-11', 1),
(4, 2, '2026-08-12', 2),
(1, 3, '2026-08-13', 1),
(5, 4, '2026-08-13', 1),
(8, 4, '2026-08-14', 2),
(7, 7, '2026-09-06', 1),
(10, 8, '2026-09-16', 2),
(6, 10, '2026-07-16', 1);
