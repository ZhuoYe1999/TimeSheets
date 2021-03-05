<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/normalpage.css">
<title>Log In Page</title>
</head>
<body>
  <header class="header">
    <h1>TimeSheets</h1>
  </header>
  <div class="main">
    <main class="main-content">
      <div class="picture">
        <img src="../../resources/css/Time.png" alt="Time" width="15%" height="15%">
      </div>
      <div class="title">
        <h1>Welcome Back</h1>
      </div>
      <div class="rectangle">
        <div class="content">
          <div class="error-wrap">
            <c:if test="${error == true}">
              <b class="error">Invalid email or password.</b>
            </c:if>
          </div>
          <form action="loginaccount" method="Post" class="form">
            <input type="text" name="email" placeholder="Email"></input>
            <input type="password" name="password" placeholder="Password"></input>
            <div class="submit">
              <input type="submit" value="Log In" class="btn btn-default">
            </div>
            <br>
          </form>
          <div class="hyperlink">
            <a class="forgot-pw" href="/forgotpassword/">Forgot Password?</a>
            <a class="sign-up" href="/signup/">Sign Up</a>
          </div>
        </div>
      </div>
    </main>
  </div>
</body>
</html>