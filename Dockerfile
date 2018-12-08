FROM registry.gitlab.com/parkerm/adopt11j9-docker:master

WORKDIR /bugzone
ENV GRADLE_OPTS "-Dorg.gradle.jvmargs='-Xshareclasses'"

COPY . .
RUN env && \
    java -XshowSettings:properties -version && \
    ./gradlew assemble --debug --full-stacktrace
