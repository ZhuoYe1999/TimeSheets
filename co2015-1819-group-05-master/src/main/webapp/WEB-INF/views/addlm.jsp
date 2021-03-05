<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminPage</title>
<link rel="stylesheet" type="text/css" href="/resources/css/adminpage.css">
</head>
<body>
<div class="all">
<div class="header">
<a href="/" style="width:5px;height:50px;position:absolute;top:2%;right:75px;color:white; text-decoration:none;font-size: 222%; font-weight : bold;" >Logout</a>
<h1 class="timesheets">TimeSheets</h1>
</div>
<div class="all2">
<div class="rectangle2"></div>

<div class="add">
<label style="color: black;font-size: 33px; font-weight : bold;"> Add line managers: </label><br>
</div>
<div class="rectangle">
<div class="error-wrap" style = "color: red">
<c:if test="${error1 == true}">
<b class="error">Text area is empty!</b>
</c:if>
<c:if test="${error2 == true}">
<b class="error">The input doesn't fit the pattern "name.surname@fdmgroup.com"</b>
</c:if>
</div> 
<div class="content">
		<form action="/addlm/addlm" method="Post"> 
		
		<div id="scrolltext" class="scrolltext">
		<textarea style="overflow-y:scroll" name="users" placeholder="name.surname@fdmgroup.com, name.surname@fdmgroup.com, ..."></textarea>
		</div>
		<div class="submit">
		<input type="submit" value="Add" name="add" class="button"/> <br>
		</div> 
		</form>
</div>
		</div>
		</div>
</div>	
</body>
</html>