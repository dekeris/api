FROM maven:3-openjdk-17 AS builder
RUN mkdir /tmp/project
WORKDIR /tmp/project
COPY pom.xml .
COPY src src
RUN mvn clean package

FROM openjdk:17
COPY --from=builder /tmp/project/target/api-runner.jar /
EXPOSE 8080/tcp
CMD [ "java", "-jar", "/api-runner.jar" ]
