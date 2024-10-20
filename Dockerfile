FROM openjdk:8u151-jdk-alpine3.7

# Set environment variable for the application home
ENV APP_HOME /usr/src/app

# Create the application directory
RUN mkdir -p $APP_HOME

# Set the working directory
WORKDIR $APP_HOME

# Expose the application's port
EXPOSE 8080

# Copy the JAR file into the application directory
COPY target/secretsanta-0.0.1-SNAPSHOT.jar app.jar

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

