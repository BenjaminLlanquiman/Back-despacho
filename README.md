# Springboot API REST - Despachos

API REST desarrollada con Spring Boot para gestionar despachos de la empresa Innovatech Chile.

## Tecnologías utilizadas
- Java 21
- Spring Boot 3.4.4
- MySQL 8.0
- Docker
- GitHub Actions (CI/CD)

## Requisitos previos
- Docker y Docker Compose instalados
- Java 21

## Variables de entorno
| Variable | Descripción |
|----------|-------------|
| DB_ENDPOINT | Host de la base de datos |
| DB_PORT | Puerto de la base de datos |
| DB_NAME | Nombre de la base de datos |
| DB_USERNAME | Usuario de la base de datos |
| DB_PASSWORD | Contraseña de la base de datos |

## Cómo ejecutar el proyecto

### Con Docker Compose
```bash
docker-compose up -d
```

### Endpoints disponibles
| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | /api/v1/despachos | Obtener todos los despachos |
| GET | /api/v1/despachos/{id} | Obtener despacho por ID |
| POST | /api/v1/despachos | Crear un despacho |
| PUT | /api/v1/despachos/{id} | Actualizar un despacho |
| DELETE | /api/v1/despachos/{id} | Eliminar un despacho |

## Pipeline CI/CD
El pipeline se activa automáticamente al hacer push en la rama `deploy` y realiza:
1. Build de la imagen Docker
2. Push a Docker Hub
3. Deploy automático en EC2
