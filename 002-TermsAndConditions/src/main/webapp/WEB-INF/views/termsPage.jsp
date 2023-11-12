<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Terms and Conditions</title>
    <script>
      function submitForm(agreeValue) {
        document.getElementById('agreeInput').value = agreeValue;
        document.forms['termsForm'].submit();
      }
    </script>
  </head>
  <body>
    <h2>Terms and Conditions</h2>
    <!-- Your terms and conditions content here -->

    <form
      id="termsForm"
      action="<%=request.getContextPath()%>/terms/confirm"
      method="post"
    >
      <input type="hidden" id="agreeInput" name="agree" value="false" />
      <input
        type="image"
        src="<%=request.getContextPath()%>/images/agree-image.jpg"
        alt="I agree"
        onclick="submitForm('true')"
      />
      <input
        type="image"
        src="<%=request.getContextPath()%>/images/cancel-image.jpg"
        alt="Cancel"
        onclick="submitForm('false')"
      />
    </form>
  </body>
</html>
