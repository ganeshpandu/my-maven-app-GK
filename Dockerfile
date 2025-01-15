# Use official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the Maven target directory into the container
COPY target/my-maven-app-1.0.0-SNAPSHOT.jar /app/my-maven-app.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "my-maven-app.jar"]

