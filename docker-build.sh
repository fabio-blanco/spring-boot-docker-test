#!/bin/bash

./gradlew build

# If using a project that has booth groovy and maven, do this if maven is the default:
# docker build --build-arg JAR_FILE=build/libs/\*.jar -t iogui/spring-boot-docker-test .
docker build -t iogui/spring-boot-docker-test .
