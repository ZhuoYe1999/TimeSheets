<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
  background-color: #f4f4f4;
 
}
.rectangle {
  height: 620px;
  width: 600px;
  background-color: #424242;
  position: relative;
  left: 42%;
  top:-15px;
  margin: 7% 0 0 -9%;
  font :italic bold 12px/30px Georgia, serif;  
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.3);
}
.title {
  position: relative;
  width:550px;
  height: 200px;
  z-index: 15;
  left: 19%;
  top: 16%;
  margin: 7% 0 0 -9%;
  font-style: normal;
  font-family: Arial, Helvetica, serif;
  font-size: 45px;
  color:white;
}

a {
  border-radius: 15px;
  background-color:black;
  border: none;
  color: white;
  padding: 13px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 23px;
  cursor: pointer;
  margin: -46px 230px;
  font-family: Arial, Helvetica, serif;
  font-style: normal;
  }
 
  p {
  color:white;
  font-size:18px;
  font-style: normal;
  font-weight: normal;
  position: relative;
  left: 10%;
  top:-35%;
  font-family: Arial, Helvetica, serif;
  }
  .n9{
   color:white;
   position: relative;
   left: 74%;
   top: 61%;
   font-size:15px;
   font-style: normal;
  }
  .n10{
   color:white;
   position: relative;
   left: 77%;
   top: 42.5%;
   font-size:15px;
   font-style: normal;
  }
  .n11{
   color:white;
   position: relative;
   left: 86%;
   top: 26.7%;
   font-size:15px;
   font-style: normal;
  }
 .n12{
   color:white;
   position: relative;
   left: 97%;
   top: 15%;
   font-size:15px;
   font-style: normal;
  }
.twentyfive {
    background-image:
        linear-gradient(180deg, transparent 50%, #f4f4f4 50%),
        linear-gradient(90deg, transparent 50%, #f4f4f4 50%);
    background-color: rgba(255, 255, 255,0.4);
    position: relative;
  left: 66%;
  top: -12.5%;
 
}
pie {
  width: 355px;
  height: 355px;
  display: block;
  border-radius: 50%;
  background-color: ;
  border: 15px solid #f4f4f4;
  float: left;
  margin: 1em;
}

</style>
<title>Sign Up Success</title>
</head>
<body>
<div class="rectangle">

<div class="title">
<h1>Thank You!</h1>
</div>
<div class="n9">
<h2 >9</h2>
</div>
<div class="n10">
<h2 >10</h2>
</div>
<div class="n11">
<h2 >11</h2>
</div>
<div class="n12">
<h2 >12</h2>
</div>
<p >Your sign up request successful, click login to go to login page.</p>
<a href="/">Log In</a>
<pie class="twentyfive">
</pie>

</div>



</body>
</html>