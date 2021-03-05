<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/forgotpassword.css">
<title>Log In Page</title>
</head>
<body>
  <header class="header">
    <h1>TimeSheets</h1>
  </header>
  <div class="main">
    <main class="main-content">
      <div class="title">
        <h1>Forgotten Password</h1>
      </div>
      <div class="rectangle">
        <div class="content">
          <div class="error-wrap">
            <c:if test="${error == true}">
              <b class="error">Invalid email or password.</b>
            </c:if>
          </div>
          <form action="forgetpassword" method="Post" class="form">
            <input type="text" name="email" placeholder="Email"></input>
            <div class="submit">
              <input type="submit" value="Send" class="btn btn-default">
            </div>
          </form>
        </div>
      </div>
    </main>
  </div>
</body>
</html>