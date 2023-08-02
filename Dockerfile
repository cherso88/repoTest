# Define la imagen base que se usará para ejecutar la aplicación Spring Boot
FROM openjdk:17
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app


# Copia el archivo JAR (o WAR) de la aplicación al contenedor en el directorio de trabajo
RUN mvnw install -DskipTests
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Comando para ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "app.jar"]