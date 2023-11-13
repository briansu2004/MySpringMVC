# Terms and Conditions

## webapp

Spring Initializr didn't create for us but it is the web root folder!

## web.xml

This file is not required.

## JavaScript is case-sensitive!

## mvn vs mvnw

`mvn` and `mvnw` are both scripts used in the context of Apache Maven, a widely used build and project management tool for Java projects. However, they serve slightly different purposes:

1. `mvn` (Maven Wrapper):
   - `mvn` is the standard way to invoke Maven commands. It relies on the system-wide installation of Apache Maven on your computer.
   - When you run `mvn` commands, it uses the version of Maven installed on your system.
   - If you have a specific version of Maven you want to use, you need to ensure that version is installed on your system.

2. `mvnw` (Maven Wrapper):
   - `mvnw` (Maven Wrapper) is a script that helps maintain a specific version of Apache Maven for your project.
   - It is intended to be used with projects that include a `.mvn` directory containing the Maven Wrapper JAR (`maven-wrapper.jar`) and properties file (`maven-wrapper.properties`).
   - When you run `mvnw` commands, it checks for the version specified in the `maven-wrapper.properties` file and automatically downloads and uses that version of Maven, ensuring consistency across different development environments and making it easier for contributors to your project.

Using `mvnw` is advantageous when you want to ensure that everyone working on a project is using the same version of Maven, avoiding compatibility issues. It's especially useful in projects where contributors may not have Maven installed globally or where different projects require different versions of Maven.

In summary, use `mvn` for projects where you rely on a globally installed Maven, and use `mvnw` in projects that include the Maven Wrapper to enforce a specific Maven version. The choice depends on your project's needs and preferences.
