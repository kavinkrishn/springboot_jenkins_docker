FROM openjdk:17-jdk-slim

WORKDIR /service-registry

COPY target/*.jar service-registry.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "service-registry.jar"]