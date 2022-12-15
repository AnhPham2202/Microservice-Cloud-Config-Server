FROM openjdk:11

FROM maven:3.6.3

WORKDIR /app

COPY . /app

EXPOSE 8888

RUN mvn clean install package

CMD ["mvn", "spring-boot:run"]
