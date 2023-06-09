# Establecer la imagen base de Amazon Corretto con Java 17
FROM amazoncorretto:17-alpine

# Establecer el directorio de trabajo de la aplicación
WORKDIR /app

# Copiar los archivos necesarios para la aplicación
COPY target/*.jar /app/app.jar

# Exponer el puerto que usará la aplicación
EXPOSE 8761

# Ejecutar el comando para iniciar la aplicación
CMD ["java", "-jar", "/app/app.jar"]
