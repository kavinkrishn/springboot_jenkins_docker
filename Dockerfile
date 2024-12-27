# Use the OpenJDK 17 image as the base
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /target

# Expose port 8081
EXPOSE 8081

# Copy the Spring Boot application JAR file to the container
COPY spring_jenkins.jar spring_jenkins.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/spring_jenkins.jar"]
