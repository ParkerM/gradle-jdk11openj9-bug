plugins {
    application
    java
}

configure<JavaPluginExtension> {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

repositories {
    mavenCentral()
}

dependencies {
    testImplementation("junit:junit:4.12")
}

application {
    mainClassName = "my.project.Application"
}
