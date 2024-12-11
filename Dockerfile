# Usa la imagen base de Maven con OpenJDK 17
FROM maven:3.8.4-openjdk-17

WORKDIR /app

COPY pom.xml .
COPY src ./src
COPY user.db ./user.db


RUN mvn package



CMD ["java", "-jar", "target/sqlitedb-1.0-SNAPSHOT.jar"]

EXPOSE 8080

