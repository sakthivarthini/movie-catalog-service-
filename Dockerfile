# Use official OpenJDK 17 slim image as base
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven executable JAR file and the CycloneDX BOM XML file to the container
COPY ./target/movie-catalog-service-0.0.1-SNAPSHOT.jar /app/movie-catalog-service-0.0.1-SNAPSHOT.jar
COPY ./target/bom.xml /app/bom.xml

# Expose the port your application runs on
EXPOSE 5002

# Command to run the Spring Boot application
CMD ["java", "-jar", "movie-catalog-service-0.0.1-SNAPSHOT.jar"]
