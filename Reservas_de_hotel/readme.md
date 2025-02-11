# Respaldo de Base de Datos Reservas de Hotel

Este repositorio contiene un respaldo de la base de datos de Reservas de Hotel, creado por el Grupo 1: Francisco, William, Yordy.

## Descripción

El proyecto incluye un archivo SQL con el respaldo de la base de datos de reservas de hotel. La base de datos incluye tablas para gestionar reservas, clientes, habitaciones, y otros datos relevantes.

## Archivos

- Reservas_de_hotel/backup_reservas_hotel_v1.sql: Archivo SQL con el respaldo de la base de datos.

## Estructura de la Base de Datos

La base de datos incluye las siguientes tablas:

- reservas: Contiene información sobre las reservas realizadas.
  - id: Identificador único de la reserva.
  - cliente_nombre: Nombre del cliente.
  - habitacion_id: Identificador de la habitación reservada.
  - fecha_entrada: Fecha de entrada.
  - fecha_salida: Fecha de salida.
  - estado_reserva: Estado de la reserva (Confirmada, Cancelada, Pendiente).
  - total: Total de la reserva.

## Cómo Restaurar la Base de Datos

Para restaurar la base de datos desde el archivo de respaldo, sigue estos pasos:

1. Abre tu terminal o línea de comandos.
2. Conéctate a tu servidor de PostgreSQL.
3. Ejecuta el comando de restauración:
   ```sh
   psql -U [usuario] -d [nombre_base_de_datos] -f Reservas_de_hotel/backup_reservas_hotel_v1.sql