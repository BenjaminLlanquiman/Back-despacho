# Build
FROM maven:3.9.9-eclipse-temurin-21 AS builder

WORKDIR /app

COPY Springboot-API-REST-DESPACHO/pom.xml .

RUN mvn dependency:go-offline

COPY Springboot-API-REST-DESPACHO/src ./src

RUN mvn clean package -DskipTests

# Producción
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]