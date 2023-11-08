# Spring MVC typical folder structure

A typical folder structure for a Spring MVC application follows the principles of organization and separation of concerns. It helps keep your project well-structured and maintainable. Here's a common folder structure for a Spring MVC project:

```plaintext
src/
|-- main/
|   |-- java/
|   |   |-- com/
|   |   |   |-- yourpackage/
|   |   |   |   |-- controllers/
|   |   |   |   |   |-- YourController.java
|   |   |   |   |-- models/
|   |   |   |   |   |-- YourModel.java
|   |   |   |   |-- services/
|   |   |   |   |   |-- YourService.java
|   |-- resources/
|   |   |-- static/
|   |   |   |-- css/
|   |   |   |-- js/
|   |   |   |-- images/
|   |   |-- templates/
|   |   |   |-- your-views.html
|   |   |-- application.properties
|-- test/
|   |-- java/
|   |   |-- com/
|   |   |   |-- yourpackage/
|   |   |   |   |-- controllers/
|   |   |   |   |   |-- YourControllerTest.java
|   |   |   |   |-- services/
|   |   |   |   |   |-- YourServiceTest.java
|   |-- resources/
|   |   |-- application-test.properties
pom.xml
```

Here's a breakdown of the key directories and their purposes:

- **`src/main/java`:** This directory contains your Java source code. In a Spring MVC project, you'll typically have packages for your controllers, models, and services.

  - `controllers`: This is where your Spring MVC controllers are located. These controllers handle incoming requests and define the application's request mappings.

  - `models`: This is where your data models or domain objects reside. These classes define the structure of your data.

  - `services`: Service classes contain the business logic of your application. They act as an intermediary between the controllers and data access layer (if applicable).

- **`src/main/resources`:** This directory holds non-Java resources, including configuration files, templates, and static assets.

  - `static`: This is where you place static resources such as CSS files, JavaScript files, and images.

  - `templates`: This directory contains your view templates. These can be HTML files, Thymeleaf templates, JSPs, or other view technologies.

  - `application.properties`: Configuration properties for your application, such as database settings, server port, and other application-specific configurations.

- **`src/test`:** This directory is for your unit and integration tests. It mirrors the structure of the `src/main` directory to test your code.

- **`pom.xml`:** This is the project's Maven configuration file, which defines project dependencies and build settings.

This is a basic structure, and depending on the complexity of your project, you may have additional directories for aspects like exception handling, security, or internationalization. Additionally, you might use a package-by-feature structure instead of a package-by-layer structure for your Java classes.

Remember that your specific project requirements may vary, and you can customize the folder structure to suit your needs. However, adhering to best practices for project organization and separation of concerns is crucial for maintainability and collaboration in larger projects.
