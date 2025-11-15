# Use an official OpenJDK runtime as a parent image
FROM openjdk:16.0.2-jdk-buster

# Set the working directory in the container
WORKDIR /app

# Copy the executable jar file to the container
# Make sure to change 'target/my-spring-boot-app.jar' to your actual JAR file path
COPY target/url-shortener-0.0.1-SNAPSHOT.jar /app/url-shortener.jar

# Inform Docker that the container listens on port 8080
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "/app/url-shortener.jar"]
