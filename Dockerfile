FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/spring_jenkins-0.0.1-SNAPSHOT.jar app/

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/app/spring_jenkins-0.0.1-SNAPSHOT.jar"]