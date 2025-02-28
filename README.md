# School-Cap-Cds

## Acerca del proyecto

Este es un proyecto de prueba conectado a mi cuenta trial de BTP. Dentro de BTP, creé una base de datos y la vinculé con el proyecto en CAP CDS para gestionar y exponer los datos de forma estructurada. Cuenta con dos servicios bindeados. Un servicio de seguridad xsuaa y el servicio de hana para la conexion a la base de datos

## Clean Architecture

Este proyecto sigue los principios de Clean Architecture, manteniendo una separación clara entre capas para garantizar modularidad, escalabilidad y mantenibilidad.

📂 Estructura del Proyecto
La organización del código se mantiene siguiendo la estructura estándar de CAP CDS:

/project-root
│── /app        # UI (si aplica)
│── /db         # Definición del modelo de datos (CDS)
│── /srv        # Servicios y lógica de negocio (CAP Services)
│── /backend    # Handlers y lógica específica (Handlers personalizados)
│── /mta.yaml   # Configuración para despliegue en BTP
│── package.json
│── README.md

## Pre-requisitos
    
Para ejecutar este proyecto de forma local, es necesario contar con los siguientes requisitos previos:

Cuenta en SAP BTP

Debes tener una cuenta en SAP Business Technology Platform (BTP) con acceso a SAP HANA Cloud para la base de datos.
Si aún no tienes una, puedes registrarte en la versión trial.
Desplegar el proyecto en BTP

El proyecto debe estar desplegado en SAP BTP utilizando Cloud Application Programming Model (CAP CDS).
Asegúrate de haber creado y configurado el servicio de base de datos en SAP HANA Cloud.
Configurar default-env.json

Para ejecutar el proyecto localmente, es necesario generar un archivo default-env.json con las credenciales de conexión a la base de datos en SAP BTP.

Puedes obtener estas credenciales desde el servicio de base de datos en SAP BTP y formatearlas en el archivo de la siguiente manera:

{
  "VCAP_SERVICES": {
    "hana": [
      {
        "credentials": {
          "host": "<host>",
          "port": "<port>",
          "user": "<user>",
          "password": "<password>",
          "certificate": "<cert>"
        }
      }
    ]
  }
}

Herramientas necesarias

Versión de **NodeJS ^18**.
@sap/cds-dk instalado globalmente (npm i -g @sap/cds-dk)
CF CLI (Cloud Foundry CLI) para desplegar en BTP


## Despliegue
Este proyecto puede ejecutarse localmente o desplegarse en SAP BTP.

🔹 Ejecutar localmente
Para correr el proyecto en tu entorno local, sigue estos pasos:

Clonar el repositorio

git clone <URL_DEL_REPO>
cd <NOMBRE_DEL_PROYECTO>
Instalar dependencias

npm install

Configurar las credenciales de la base de datos

Asegúrate de tener un archivo default-env.json en la raíz del proyecto con las credenciales de SAP HANA Cloud (ver sección de Pre-requisitos).
Ejecutar el servidor CAP localmente

cds watch
Esto iniciará el servicio en http://localhost:4004/ y actualizará automáticamente los cambios en tiempo real.

🌍 Desplegar en SAP BTP
Para desplegar el proyecto en SAP BTP, sigue estos pasos:

Iniciar sesión en Cloud Foundry (CF CLI)

cf login -a https://api.cf.<region>.hana.ondemand.com
(Reemplaza <region> por la región donde tienes tu cuenta, como us10 o eu10).

Compilar y preparar el proyecto

mbt build

cf deploy mta_archives/<nombre>.mtar

Verificar el despliegue

Una vez finalizado, puedes revisar el estado de la aplicación con:

cf apps

Y acceder a la URL generada para tu servicio.

## Nomenclatura de commits
Se utilizan palabras clave como prefijos para nombrar los commits de forma tal que represente lo más fiel posible los cambios.

- **feature**/{...}: para nuevas funcionalidades o comportamiento.
- **add**/{...}: para agregar código en una funcionalidad existente.
- **update**/{...}: para registrar una actualización de cierto código.
- **modify**/{...}: ídem anterior.
- **refactor**/{...}: para cambios relativos a mejoras y optimización de código.
- **bugfix**/{...}: para resolver pequeños errores que no afectan de forma crítica el ciclo de vida del programa.
- **hotfix**/{...}: para resolver errores críticos en la rama productiva.
