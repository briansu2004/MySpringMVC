# How to quick start a Spring MVC web app?

Creating a Spring MVC web application involves several steps. I'll provide a quick guide to get you started. This example assumes you have some basic knowledge of Java and Maven, and have these tools installed on your system.

1. **Set Up Your Development Environment:**

   - Install Java: Make sure you have Java Development Kit (JDK) 8 or later installed on your system.
   - Install an Integrated Development Environment (IDE) like Eclipse, IntelliJ IDEA, or Visual Studio Code with Spring Boot extensions.

2. **Create a New Maven Project:**

   - Open your IDE and create a new Maven project.
   - Choose a suitable group and artifact ID for your project.

3. **Add Spring Boot Dependencies:**

   - Open your `pom.xml` (Maven project configuration) and add the following dependencies for a basic Spring MVC application:

   ```xml
   <dependencies>
       <dependency>
           <groupId>org.springframework.boot</groupId>
           <artifactId>spring-boot-starter-web</artifactId>
       </dependency>
   </dependencies>
   ```

   Your IDE should automatically download these dependencies for you.

4. **Create a Controller:**

   - Create a new Java class, e.g., `HomeController`, and annotate it with `@Controller`. This class will handle incoming HTTP requests.

   ```java
   import org.springframework.stereotype.Controller;
   import org.springframework.web.bind.annotation.RequestMapping;

   @Controller
   public class HomeController {
       @RequestMapping("/")
       public String home() {
           return "index";
       }
   }
   ```

5. **Create a View:**

   - Create a folder named `templates` in your project's `resources` directory.
   - Inside the `templates` folder, create an HTML file named `index.html` (or any name you used in the `HomeController`).

   ```html
   <!DOCTYPE html>
   <html>
     <head>
       <title>Spring MVC App</title>
     </head>
     <body>
       <h1>Welcome to Spring MVC!</h1>
     </body>
   </html>
   ```

6. **Configure the Application:**

   - In your `src/main/java` folder, create a main class with the `@SpringBootApplication` annotation.

   ```java
   import org.springframework.boot.SpringApplication;
   import org.springframework.boot.autoconfigure.SpringBootApplication;

   @SpringBootApplication
   public class MyApplication {
       public static void main(String[] args) {
           SpringApplication.run(MyApplication.class, args);
       }
   }
   ```

7. **Run the Application:**
   - Right-click on your main class and run it as a Java Application.
   - Your Spring MVC web application should start, and you can access it in a web browser at `http://localhost:8080`.
