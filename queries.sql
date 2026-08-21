-- CONSULTAS Y REPORTES (Hotel Database PostgreSQL)

-- Habitaciones disponibles de tipo 'Suite' o 'Doble Premium'
SELECT numero_habitacion 
FROM habitaciones 
WHERE tipo_habitacion IN ('Suite', 'Doble Premium') 
  AND estado_habitacion = 'Disponible';

-- Clientes con email específico y DNI que inicie con 38 o 39
SELECT nombre_cliente, apellido_cliente 
FROM clientes 
WHERE email_cliente LIKE '%@email.com' 
  AND (dni_cliente LIKE '38%' OR dni_cliente LIKE '39%');

-- Reservas activas (Confirmadas o Pendientes) ordenadas por fecha de ingreso
SELECT id_habitacion_reserva AS "Habitacion Id" 
FROM reservas
WHERE estado_reserva IN ('Confirmada', 'Pendiente') 
ORDER BY fechaentrada_reserva DESC;

-- Detalle de reservas con datos del cliente y la habitación asignada
SELECT c.nombre_cliente, c.apellido_cliente, h.numero_habitacion, r.fechaentrada_reserva, r.estado_reserva 
FROM clientes c
INNER JOIN reservas r ON c.id_cliente = r.id_cliente_reserva
INNER JOIN habitaciones h ON h.id_habitacion = r.id_habitacion_reserva;

-- Historial de reservas y pagos asignados a cada empleado (incluye empleados sin reservas)
SELECT e.nombre_empleado, e.apellido_empleado, e.puesto_empleado, p.metodopago_pago 
FROM empleados e
LEFT JOIN reservas r ON e.id_empleado = r.id_empleado_reserva
LEFT JOIN pagos p ON r.id_reserva = p.id_reserva_pago;

-- Detalle de consumo de servicios adicionales contratados por clientes
SELECT c.nombre_cliente, c.apellido_cliente, s.nombre_servicio, sxr.fechaservicio_sxr, sxr.cantidad_sxr 
FROM clientes c
INNER JOIN reservas r ON c.id_cliente = r.id_cliente_reserva
INNER JOIN servicioxreserva sxr ON r.id_reserva = sxr.id_reserva_sxr
INNER JOIN servicios s ON sxr.id_servicio_sxr = s.id_servicio;


-- Recaudación total agrupada por método de pago
SELECT metodopago_pago, SUM(monto_pago) AS total_recaudado 
FROM pagos
GROUP BY metodopago_pago;

-- Top 3 de habitaciones más reservadas
SELECT h.numero_habitacion, COUNT(r.id_reserva) AS total_reservas
FROM habitaciones h
INNER JOIN reservas r ON h.id_habitacion = r.id_habitacion_reserva
GROUP BY h.numero_habitacion
ORDER BY total_reservas DESC
LIMIT 3;

-- Clientes de alto consumo con compras totales superiores a $20,000
SELECT c.nombre_cliente, c.apellido_cliente, SUM(p.monto_pago) AS total_gastado
FROM clientes c
INNER JOIN reservas r ON c.id_cliente = r.id_cliente_reserva
INNER JOIN pagos p ON r.id_reserva = p.id_reserva_pago
GROUP BY c.id_cliente, c.nombre_cliente, c.apellido_cliente
HAVING SUM(p.monto_pago) > 20000;
