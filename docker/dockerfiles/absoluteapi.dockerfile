FROM java:11-alpine
USER javauser

WORKDIR /usr/src/app

COPY absoluteApi.jar ./

EXPOSE 8080

CMD ["java", "-jar", "absolute_api.jar"]