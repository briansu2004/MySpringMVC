# Steps

- [Step 1 - Initialize the basic app](#step-1---initialize-the-basic-app)
- [Step 2 - Create a Web Controller](#step-2---create-a-web-controller)
- [Step 3 - Create a Web page](#step-3---create-a-web-page)
- [Step 4 - Add a Home Page](#step-4---add-a-home-page)
- [Step 5 - Run the Application (Build an executable JAR)](#step-5---run-the-application-build-an-executable-jar)
- [Step 6 - Test the Application](#step-6---test-the-application)

## Step 1 - Initialize the basic app

## Step 2 - Create a Web Controller

src/main/java/com/example/servingwebcontent/GreetingController.java

```java
package com.example.servingwebcontent;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {

	@GetMapping("/greeting")
	public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Model model) {
		model.addAttribute("name", name);
		return "greeting";
	}
}
```

## Step 3 - Create a Web page

src/main/resources/templates/greeting.html

```html
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
  <head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  </head>
  <body>
    <p th:text="|Hello, ${name}!|" />
  </body>
</html>
```

## Step 4 - Add a Home Page

src/main/resources/static/index.html

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  </head>
  <body>
    <p>Get your greeting <a href="/greeting">here</a></p>
  </body>
</html>
```

## Step 5 - Run the Application (Build an executable JAR)

with maven

```dos
mvnw spring-boot:run
```

with gradle

```dos
gradlew build
```

with CLI

```dos
java -jar build/libs/gs-serving-web-content-0.1.0.jar
```

## Step 6 - Test the Application

http://localhost:8080/greeting

http://localhost:8080/greeting?name=Brian
