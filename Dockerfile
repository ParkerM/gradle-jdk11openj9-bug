FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.1.13-alpine-slim

WORKDIR /bugzone
ENV GRADLE_USER_HOME /bugzone/.gradle

COPY . .
RUN env && \
    java -XshowSettings:properties -version && \
    ./gradlew assemble --debug --full-stacktrace
