FROM maven:3.8.5-jdk-11 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java
COPY --from=build /usr/src/app/target/eureka_server-0.0.1-SNAPSHOT.jar /usr/app/eureka_server-0.0.1-SNAPSHOT.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/usr/app/eureka_server-0.0.1-SNAPSHOT.jar"]