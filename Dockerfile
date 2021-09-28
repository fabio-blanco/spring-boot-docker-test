FROM openjdk:17-alpine3.14
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser:appgroup
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
