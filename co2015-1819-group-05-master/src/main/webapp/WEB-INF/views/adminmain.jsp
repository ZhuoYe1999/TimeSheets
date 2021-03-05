<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/normalpage.css">
<title>Admin Page</title>
</head>
<body>
<div class="header">
<a href="/" style="width:5px;height:50px;position:absolute;top:1%;right:75px;color:white; text-decoration:none;font-size: 222%; font-weight : bold;" >Logout</a>
<h1 class="timesheets">TimeSheets</h1>
</div>
<div class="all">
<div class="picture">
<img src="/resources/css/Time.png" alt="Time" width="15%" height="15%">
</div>
<div class="title">
<h1>Welcome Back</h1>
</div>
<div class="rectangle">
<div class="content">


<div class="hyperlink">
  <a href="/addadmin/">Add New Admin</a> <br>
  <a href="/addlm/">Add Line Managers</a> <br>
  <a href="/adminpage/">Add Employees</a>
 </div>
</div>
</div>
</div>
</body>
</html>