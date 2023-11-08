# How to redirect in Spring MVC?

In Spring MVC, you can perform a redirection in several ways, depending on your requirements. Here are two common methods for performing redirection:

1. **Using `redirect:` prefix in Controller methods:**

   You can use the `redirect:` prefix in your controller methods to perform a redirection. When this prefix is used, Spring MVC will issue an HTTP redirect response to the specified URL.

   ```java
   @Controller
   public class MyController {
       @RequestMapping("/redirectToPage")
       public String redirectToPage() {
           // Redirect to another URL
           return "redirect:/targetPage";
       }
   }
   ```

   In this example, when you access `/redirectToPage`, Spring MVC will redirect you to `/targetPage`.

2. \*\*Using `RedirectView` and `RedirectAttributes`:

   You can also perform redirection using `RedirectView` and `RedirectAttributes` as follows:

   ```java
   @Controller
   public class MyController {
       @RequestMapping("/redirectToPage")
       public String redirectToPage(RedirectAttributes attributes) {
           // Redirect to another URL with a flash attribute
           attributes.addFlashAttribute("message", "Redirected successfully");
           return "redirect:/targetPage";
       }
   }
   ```

   In this example, we're using `RedirectAttributes` to add flash attributes. Flash attributes are used to pass data between requests after the redirection. When you redirect to `/targetPage`, you can access the "message" attribute.

   In your target controller, you can retrieve this attribute like this:

   ```java
   @Controller
   public class TargetController {
       @RequestMapping("/targetPage")
       public String targetPage(@ModelAttribute("message") String message) {
           // Access the "message" attribute
           return "targetPage";
       }
   }
   ```

   The `@ModelAttribute("message")` annotation is used to retrieve the flash attribute, which was set in the previous controller.

Choose the method that best suits your needs for redirection, whether you want to perform a simple URL redirect or pass data between controllers using flash attributes.
