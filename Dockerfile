FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.1.13-alpine-slim

WORKDIR /bugzone
ENV GRADLE_USER_HOME=/bugzone/.gradle

COPY . .
RUN ./gradlew assemble --debug --stacktrace
