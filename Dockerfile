FROM openjdk:17-jdk-alpine
EXPOSE 8080
WORKDIR /spring-boot-docker-complete
COPY . .
RUN chmod a+x ./mvnw
RUN ./mvnw package -DskipTests
ENTRYPOINT [ “java”, “-jar”, “target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar”]
