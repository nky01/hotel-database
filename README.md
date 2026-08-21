# 🏨 Hotel Database System

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)

Un diseño e implementación de base de datos relacional orientada a la gestión operativa de un hotel, optimizada para su integración con desarrollos **Backend en Java (Spring Boot / JPA / Hibernate)**.

---

## 📋 Descripción del Proyecto

Este proyecto abarca el modelo de datos relacional para un sistema de gestión hotelera. Permite registrar y administrar el flujo completo de operaciones:
* **Clientes:** Almacenamiento de datos personales y de contacto.
* **Habitaciones:** Gestión de tarifas, tipos de habitación y estados de ocupación/mantenimiento.
* **Empleados:** Registro del personal y sus respectivos roles dentro del hotel.
* **Reservas:** Gestión de estadías asociando cliente, habitación y el empleado que procesó la reserva.
* **Pagos:** Registro de transacciones financieras vinculadas a las reservas.
* **Servicios Adicionales:** Catálogo de servicios extras (Spa, Desayuno, Room Service) y registro de consumos detallados por reserva.

---

## 🗺️ Diagrama Entidad-Relación (DER)

<p align="center">
  <img width="1357" height="602" alt="image" src="https://github.com/user-attachments/assets/f86e9554-9e12-4000-9b29-635ed66949db" />
</p>

---

## 🛠️ Tecnologías y Buenas Prácticas Aplicadas

* **Motor:** PostgreSQL (v12+).
* **Identificadores:** Uso de `INT GENERATED ALWAYS AS IDENTITY` para manejo estándar de Primary Keys autoincrementables.
* **Manejo Monetario:** Uso de `DECIMAL(10,2)` en tarifas, precios y sueldos para evitar imprecisiones de punto floating.
* **Compatibilidad de Datos:** Campos telefónicos y documentos en `VARCHAR` para soportar códigos internacionales, guiones o formatos extensos.
* **Integridad Referencial:** Claves foráneas (`FOREIGN KEY`) estrictas para garantizar consistencia entre entidades.

---

## 📐 Modelo de Datos y Relaciones

El proyecto cuenta con las siguientes tablas y dependencias:

* **`clientes`**: `id_cliente` (PK), `dni_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono_cliente`, `email_cliente`.
* **`habitaciones`**: `id_habitacion` (PK), `numero_habitacion`, `tipo_habitacion`, `precionoche_habitacion`, `estado_habitacion`.
* **`empleados`**: `id_empleado` (PK), `dni_empleado`, `nombre_empleado`, `apellido_empleado`, `puesto_empleado`, `sueldo_empleado`.
* **`reservas`**: `id_reserva` (PK), `id_habitacion_reserva` (FK), `id_cliente_reserva` (FK), `id_empleado_reserva` (FK), `fechaentrada_reserva`, `fechasalida_reserva`, `estado_reserva`.
* **`pagos`**: `id_pago` (PK), `id_reserva_pago` (FK), `monto_pago`, `fecha_pago`, `metodopago_pago`.
* **`servicios`**: `id_servicio` (PK), `nombre_servicio`, `descripcion_servicio`, `precio_servicio`.
* **`servicioxreserva`**: `id_sxr` (PK), `id_servicio_sxr` (FK), `id_reserva_sxr` (FK), `fechaservicio_sxr`, `cantidad_sxr`.

---

## 📂 Archivos del Repositorio

* **`schema.sql`**: Script DDL que contiene la creación de todas las tablas con sus respectivas restricciones (`PRIMARY KEY`, `FOREIGN KEY`, tipos de datos).
* **`data.sql`**: Script DML con datos de prueba (*seed data*) consistentes para poblar la base de datos y realizar testing de consultas SQL o endpoints de API.
* **`queries.sql`**: Script con consultas SQL avanzadas (filtros, uniones con `JOIN`, agrupaciones con `GROUP BY` y reportes con `HAVING`) para probar la explotación de datos.
  
---

## 🚀 Cómo Ejecutar el Proyecto

### 1. Clonar el repositorio
```bash
  git clone https://github.com/nky01/hotel-database.git
  cd hotel-database
```

2. **Ejecutar los scripts:**

3. **Crear la base de datos en PostgreSQL:**
```bash
   CREATE DATABASE "hotel-database";
```

3. **`schema.sql`**: Crea la estructura de las tablas.
4. **`data.sql`**: Inserta los datos de prueba.
5. **`queries.sql`**: Ejecuta las consultas y reportes de prueba.

---

## 👩‍💻 Autora

* **Nicole** — Backend Developer
* **GitHub:** [@nky01](https://github.com/nky01)
