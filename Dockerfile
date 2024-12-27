# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Expose port 8081
EXPOSE 8081

# Copy the Spring Boot JAR file
COPY target/spring_jenkins-0.0.1-SNAPSHOT.jar spring_jenkins.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/spring_jenkins.jar"]
