FROM adoptopenjdk/openjdk11-openj9:x86_64-alpine-jdk11u-nightly-slim

WORKDIR /bugzone
ENV GRADLE_USER_HOME /bugzone/.gradle
ENV GRADLE_OPTS "-Dorg.gradle.daemon=false -Dorg.gradle.jvmargs='-Xshareclasses -Xscmx60M -Xscmaxaot8M -Xquickstart'"

COPY . .
RUN echo $GRADLE_OPTS && \
    echo $JAVA_TOOL_OPTIONS && \
    ./gradlew :assemble --debug --full-stacktrace
