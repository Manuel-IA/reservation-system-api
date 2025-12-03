# Reservation System API

API REST en **Ruby on Rails** para la gestión de reservas.  
Este proyecto sirve como ejemplo de cómo estructuro un backend en Rails: modelado de dominio, endpoints REST y buenas prácticas básicas para una API de negocio.

---

## Descripción

La API permite gestionar entidades típicas de un sistema de reservas, por ejemplo:

- Recursos reservables (salas, servicios, etc.).
- Usuarios o clientes.
- Reservas asociadas a un recurso y a un usuario, con fechas y estados.

El objetivo principal de este proyecto es mostrar:

- Una estructura clara de una API Rails.
- Separación de responsabilidades entre modelos, controladores y servicios.
- Uso de migraciones y esquema de base de datos versionado.

> Nota: El dominio concreto (qué se reserva) puede adaptarse según la necesidad.  
> Consulta `config/routes.rb` y los modelos en `app/models` para ver el detalle actual de la implementación.

---

## Stack técnico

- **Lenguaje:** Ruby (ver versión en `.ruby-version`)
- **Framework:** Ruby on Rails (API mode)
- **Base de datos:** PostgreSQL (configurable en `config/database.yml`)
- **Gestión de dependencias:** Bundler
- **Servidor de desarrollo:** Puma (por defecto en Rails)

---

## Requisitos previos

- Ruby instalado (versión especificada en `.ruby-version`).
- PostgreSQL en ejecución.
- Bundler instalado:

```bash
gem install bundler
