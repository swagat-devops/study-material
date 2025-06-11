# Step-1 : Buidling backend application with maven
FROM maven:3.9.4-eclipse-temurin-17-alpine AS backend-build
RUN mkdir emp-backend
WORKDIR emp-backend
COPY . .
RUN mvn clean package -DskipTests

#Step-2 : Running the backend application
FROM eclipse-temurin:17-jre-alpine
COPY Metadata /opt/TCS/Metadata
RUN chmod -R 777 /opt/TCS
COPY --from=backend-build emp-backend/target/*.jar emp-backend.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","-Dspring.config.location=/opt/TCS/Metadata/","emp-backend.jar"]
