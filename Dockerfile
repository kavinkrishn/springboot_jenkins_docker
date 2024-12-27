# Use the OpenJDK 17 image as the base
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER eazybytes.com

# Copy the Spring Boot application JAR file to the container
COPY target/spring_jenkins-0.0.1-SNAPSHOT.jar spring_jenkins.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/spring_jenkins.jar"]
