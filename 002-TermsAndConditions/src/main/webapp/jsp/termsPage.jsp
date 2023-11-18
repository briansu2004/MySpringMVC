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
    <link rel="stylesheet" type="text/css" href="/css/styles.css" />
  </head>
  <body>
    <h2>Terms and Conditions</h2>

    <div id="section1">
      <h2>1. Acceptance of Terms</h2>
      <p>
        By accessing or using this website, products, or services, you agree to
        comply with and be bound by the following terms and conditions.
      </p>
    </div>

    <div id="section2">
      <h2>2. Use of Services</h2>
      <p>
        You must be at least 18 years old or have the legal capacity to enter
        into contracts to use our services...
      </p>
    </div>

    <div id="section2">
      <h2>3. Privacy Policy</h2>
      <p>
        Your use of our services is also governed by our Privacy Policy, which
        can be found [link to privacy policy]. By using our services, you
        consent to the terms of our Privacy Policy.
      </p>
    </div>

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
