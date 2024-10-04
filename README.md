# petStoreKarate

Este proyecto utiliza el framework Karate para realizar pruebas automatizadas de las APIs proporcionadas por Swagger Petstore.

## Descripción

El objetivo de este proyecto es realizar pruebas de servicios REST para las siguientes operaciones:

1. Crear un usuario
2. Buscar el usuario creado
3. Actualizar el nombre y el correo del usuario
4. Buscar el usuario actualizado
5. Eliminar el usuario

## Requisitos

- Java 8 o superior
- Gradle 8.0 o superior

## Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/jhonferre/pestStoreKarate.git
   cd pestStoreKarate
   ```

2. Compila el proyecto:
   ```sh
   gradle build
   ```
## Ejecución de Pruebas

Para ejecutar las pruebas, sigue estos pasos:

1. Navega al directorio del proyecto:
   ```sh
   cd pestStoreKarate
   ```
2. Ejecuta las pruebas con Gradle:
   ```sh
   gradle clean test
   ```

## Ver Reporte de Pruebas

Después de ejecutar las pruebas, puedes ver el reporte generado por Karate en el archivo html de la siguiente ruta:

`build/karate-reports/karate-summary.html`

## Casos de Prueba

### 1. Crear un Usuario

- **Entrada**: Datos del usuario (nombre, correo, etc.)
- **Salida**: Confirmación de la creación del usuario

### 2. Buscar el Usuario Creado

- **Entrada**: nombre del usuario
- **Salida**: Datos del usuario

### 3. Actualizar el Nombre y el Correo del Usuario

- **Entrada**: nombre del usuario, nuevos datos (nombre, correo)
- **Salida**: Confirmación de la actualización

### 4. Buscar el Usuario Actualizado

- **Entrada**: nombre del usuario
- **Salida**: Datos actualizados del usuario

### 5. Eliminar el Usuario

- **Entrada**: nombre del usuario
- **Salida**: Confirmación de la eliminación

## Configuración de Datos de Prueba

En el archivo `src/test/resources/karate-config.js`, puedes modificar los datos de prueba de `newUser` y `updatedUser`. Sin embargo, asegúrate de que el `username` y el `id` se mantengan iguales para que las pruebas funcionen correctamente.
