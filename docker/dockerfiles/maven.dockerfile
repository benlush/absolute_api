FROM maven:3.6-jdk-alpine

WORKDIR /usr/src/app

COPY pom.xml ./
COPY src ./src/

RUN mvn install
