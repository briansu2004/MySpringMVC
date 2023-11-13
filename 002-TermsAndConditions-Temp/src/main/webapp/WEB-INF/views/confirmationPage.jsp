<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Confirmation</title>
  </head>
  <body>
    <h2>Confirmation</h2>

    <c:if test="${not empty error}">
      <div style="color: red">
        <p>${error}</p>
      </div>
    </c:if>

    <c:if test="${not empty message}">
      <div style="color: green">
        <p>${message}</p>
      </div>
    </c:if>
  </body>
</html>
