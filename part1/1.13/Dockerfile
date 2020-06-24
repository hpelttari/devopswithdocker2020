FROM openjdk:8
RUN apt-get update && apt-get upgrade -y
WORKDIR app
COPY spring-example-project .
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar

