FROM registry.gitlab.com/parkerm/adopt11j9-docker:master

WORKDIR /bugzone
ENV GRADLE_USER_HOME /bugzone/.gradle

COPY . .
RUN env && \
    java -XshowSettings:properties -version && \
    ./gradlew assemble --debug --full-stacktrace
