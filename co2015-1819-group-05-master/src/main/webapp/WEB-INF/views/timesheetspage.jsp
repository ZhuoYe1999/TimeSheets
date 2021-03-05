<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
 <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <style type="text/css">
    table,
    th,
    td {
      border: 3px solid #232323;
      border-collapse: collapse;
    }

    table td.orange {

      background-color: #ffbf49;
    }

    table td.grey {

      background-color: #e0e0e0;
    }

    button {
      border-radius: 25px;
      background-color: #13A9C4;
      border: none;
      color: white;
      padding: 10px 22px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 20px;
      cursor: pointer;
      margin: 20px 0;
      cursor: pointer;
    }

    .time {
      position: relative;
      width: 16%;
      height: 23%;
      left: 10%;
      margin: -40% 0 0 -9%;
      font-style: normal;
      font-family: Arial, Helvetica, serif;
      color: #044856;
    }

    .upload {
      border-radius: 25px;
      background-color: #13A9C4;
      border: none;
      color: white;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 15px;
      cursor: pointer;
      margin: 30px 110px;
    }
  </style>
  <meta charset="UTF-8">
  <title>MainPage</title>

  <link rel="stylesheet" type="text/css" href="../../resources/css/timesheetspage.css">
</head>

<body>
  

  <script>
//window.location = "#nine"//need refresh once then show
function addnotes() {
                 var addnotes = prompt('Any additional notes for timesheets?');
                 if (addnotes ==true){
                	 alert("Timesheet submitted!");
                 }else{
                	 return false;
                 }
                     
                 
             }
  </script>
  
  <div class="header">
    <a href="/"
      style="position:absolute; right:0.7%;color:white; top: 1%; text-decoration:none; font-size:290%; color:white; font-weight:bold;">log
      out</a>
  <h1> Welcome back, ${user}</h1> 
  </div>
      <div id='welcomeuser' style='display: none'>${user}</div>
  <div class="setting">
    <input type="image" src="../../resources/css/setting.png" class="picture" alt="Setting" width="34px" height="34px"
      title="Setting" id="set" />
    <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>Choose your lunch time.</p>
        <form class="lunch" action="applylunch" method="POST">
          <input type="radio" name="time" value="0" id="t"> 12:00-13:00<br>
          <input type="radio" name="time" value="1" id="o"> 13:00-14:00<br>
          <input type="button" value="Set" class="apply" onclick="getTime()"><br>
          <input name="user" type="hidden" id="name" value="" />
          <input type="submit" value="Remember my choice" class="" id="applylunchtime">
        </form>
        <!--  <form action="manageremail" method="Post">
    <br>
     Type your manager email : <input type="text" name="managerEmail" placeholder="Manager Email">
     <input type="submit" value="Upload" class="" >
   </form> -->
       
      </div>
    </div>
  </div>
 

  <div class="every">
    <div class="date">
      <p  id="date"></p>
      <p id="finaldate"></p>
      <p id="today"> </p>
    </div>
    <div id="totalWork" class="totalWork">
      <p> Total working time: <span class="workingtime"></span></p>
    </div>
    <div id='data-container' style='display: none'>${ tableArray2 }</div>
    <div class="colour">
      <img src="../../resources/css/colourmeaning.png" alt="Colour meaning" height="22%" width="22%">
    </div>
    <div class="title">
      <h1>My Timesheets</h1>
    </div>
    <div class="all">

      <form action="timesheetspage/savetable" method="Post">
        <div class="alltable" id="timetable">

          <table id="our_table">
            <thead>
              <tr>
                <th> </th>
                <th>MON</th>
                <th>TUE</th>
                <th>WED</th>
                <th>THU</th>
                <th>FRI</th>
                <th>SAT</th>
                <th>SUN</th>
              </tr>
            </thead>
            <tbody>
              <th rowspan="5">00:00-00:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">01:00-01:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">02:00-02:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">03:00-03:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">04:00-04:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">05:00-05:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">06:00-06:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">07:00-07:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">08:00-08:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">
                <div id="nine">09:00-09:59</div>
              </th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>


              <th rowspan="5">10:00-10:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">11:00-11:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8"> </td>
                <td bgcolor="#b9eff8"> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">12:00-12:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">13:00-13:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">14:00-14:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">15:00-15:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">16:00-16:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">17:00-17:59</th>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
               <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td bgcolor="#b9eff8" class='t' onclick='cSwap(this)'> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">018:00-18:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">19:00-19:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>


              <th rowspan="5">20:00-20:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">21:00-21:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>

              <th rowspan="5">22:00-22:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <th rowspan="5">23:00-23:59</th>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
              </tr>
              <tr>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td> </td>
                <td style="display:none;" id="end"> </td>
              </tr>

            </tbody>

          </table>
        </div>
        <input name="tableArray" type="hidden" id="data" value="" />
        <input name="tableCount" type="hidden" id="count" value="" />
       <input name="textdate" type="hidden" id="week" value="" /> 
		<input name="username" type="hidden" id="user" value="" />
        <div class="change">
          <input type="submit" class="button1" value="Save" id="saveButton" >
        </div> 
      </form>
    </div>
    <form action="timesheetspage/submitTable" method="Post" class="form-bottom">
    <input name="username" type="hidden" id="user1" value="" />
      <div class="arrow">
        <input type="image" class="arrow1" src="../../resources/css/arrowleft-1.png" alt="left click" width="100"
          height="60" />
        <input type="image" class="arrow1" src="../../resources/css/arrowright-1.png" alt="right click" width="100"
          height="60" />
      </div>
     <input type="submit" class="submit" onclick="addnotes()" value="Submit">
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
  <script>
    $(document).ready(function () {
      $(function () {
        var isMouseDown = false;


        $("#our_table td")
          .mousedown(function () {

            var colIndex = $(this).parent().children().index($(this));
            var rowIndex = parseInt($(this).parent().parent().children().index($(this).parent()));
            if (colIndex <= 4) {
              if (rowIndex < 45) {
                isMouseDown = true;
                $(this).toggleClass("orange");
              } else if (rowIndex >= 45 && rowIndex < 88) {
                isMouseDown = true;
                $(this).toggleClass("grey");
              } else {
                isMouseDown = true;
                $(this).toggleClass("orange");
              }
            } else if (colIndex >= 5) {
              isMouseDown = true;
              $(this).toggleClass("orange");
            }



            return false; // prevent text selection
          })
          .mouseover(function () {

            if (isMouseDown) {

              var colIndex = $(this).parent().children().index($(this));
              var rowIndex = parseInt($(this).parent().parent().children().index($(this).parent()));
              if (colIndex <= 4) {
                if (rowIndex < 45) {

                  $(this).toggleClass("orange");
                } else if (rowIndex >= 45 && rowIndex < 88) {
                  $(this).toggleClass("grey");
                } else {
                  isMouseDown = true;
                  $(this).toggleClass("orange");
                }
              } else if (colIndex >= 5) {

                $(this).toggleClass("orange");
              }

            }
          });

        $("#our_table td")
          .mouseup(function () {
            isMouseDown = false;
          });
      });
    });


  </script>
   <script>
          //need click once more then show
          function getTime() {
            var radios = document.getElementsByName('time');
            if (radios[0].checked) {
              var x = document.getElementById("our_table").getElementsByTagName("td");
              //alert(radios[0].value);	    	
              x[336].className = "t3"; x[343].className = "t3"; x[350].className = "t3"; x[357].className = "t3";
              x[337].className = "t3"; x[344].className = "t3"; x[351].className = "t3"; x[358].className = "t3";
              x[338].className = "t3"; x[345].className = "t3"; x[352].className = "t3"; x[359].className = "t3";
              x[339].className = "t3"; x[346].className = "t3"; x[353].className = "t3"; x[360].className = "t3";
              x[340].className = "t3"; x[347].className = "t3"; x[354].className = "t3"; x[361].className = "t3";
            
              x[364].className = "t"; x[371].className = "t"; x[378].className = "t"; x[385].className = "t";
              x[365].className = "t"; x[372].className = "t"; x[379].className = "t"; x[386].className = "t";
              x[366].className = "t"; x[373].className = "t"; x[380].className = "t"; x[387].className = "t";
              x[367].className = "t"; x[374].className = "t"; x[381].className = "t"; x[388].className = "t";
              //x[368].style.backgroundColor = "#f4f4f4"; x[375].style.backgroundColor = "#f4f4f4"; x[382].style.backgroundColor = "#f4f4f4"; x[389].style.backgroundColor = "#f4f4f4";
            } else if (radios[1].checked) {
              var x = document.getElementById("our_table").getElementsByTagName("td");
              //alert(radios[1].value);
              x[336].className = "t"; x[343].className = "t"; x[350].className = "t"; x[357].className = "t";
              x[337].className = "t"; x[344].className = "t"; x[351].className = "t"; x[358].className = "t";
              x[338].className = "t"; x[345].className = "t"; x[352].className = "t"; x[359].className = "t";
              x[339].className = "t"; x[346].className = "t"; x[353].className = "t"; x[360].className = "t";
              x[340].className = "t"; x[347].className = "t"; x[354].className = "t"; x[361].className = "t";
              
              x[364].className = "t3"; x[371].className = "t3"; x[378].className = "t3"; x[385].className = "t3";
              x[365].className = "t3"; x[372].className = "t3"; x[379].className = "t3"; x[386].className = "t3";
              x[366].className = "t3"; x[373].className = "t3"; x[380].className = "t3"; x[387].className = "t3";
              x[367].className = "t3"; x[374].className = "t3"; x[381].className = "t3"; x[388].className = "t3";
              x[368].className = "t3"; x[375].className = "t3"; x[382].className = "t3"; x[389].className = "t3";
            }
            var inputElements = document.getElementsByClassName('checkbox');
            if (inputElements[0].checked) {
              alert(inputElements[0].value);
            }
          }
          var table = document.querySelector('table')
          var cells = table.getElementsByTagName('th');
          function cSwap(cell) {
            if (cell.className == "t")
              cell.className = "t2";
            else if (cell.className == "t2")
              cell.className = "t";
            else if (cell.className == "t3")
              cell.className = "t4";
            else if (cell.className == "t4")
              cell.className = "t3";
          }
        </script>
        
         <script>

    var modal = document.getElementById('myModal');

    var btn = document.getElementById("set");


    var span = document.getElementsByClassName("close")[0];

    btn.onclick = function () {
      modal.style.display = "block";
    }

    span.onclick = function () {
      modal.style.display = "none";
    }

    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  </script>
    
    <script>

      var d = new Date();
      var fd = new Date();

      d.setDate(d.getDate() - (d.getDay() + 6) % 7);
      fd.setDate(fd.getDate() - (fd.getDay() + 6) % 7);

      d.setDate(d.getDate() + 1);
      fd.setDate(fd.getDate() + 7);

      var Monday = new Date(d.getFullYear(), d.getMonth(), d.getDate() - 1);
      var Sunday = new Date(fd.getFullYear(), fd.getMonth(), fd.getDate() - 1);
      var Monday = Monday.toString();
      var Sunday = Sunday.toString();
      Monday = Monday.split(" ");
      Sunday = Sunday.split(" ");
      var removed1 = Monday.splice(4, 8);
      var removed2 = Sunday.splice(4, 8);
      document.getElementById("date").innerHTML = Monday;
      document.getElementById("finaldate").innerHTML = Sunday;
      var datetime =  new Date().toLocaleDateString();
      document.getElementById("today").innerHTML = datetime;
    </script>
    
    <script>
      function getBackground(jqueryElement) {
        var color = jqueryElement.css("background-color");
        if (color !== 'rgba(0, 0, 0, 0)') {
          return color;
        }

        if (jqueryElement.is("body")) {
          return false;
        } else {
          return getBackground(jqueryElement.parent());
        }
      }    
      
      $(function () {
        $('#saveButton').click(function () {
          var countG = 0;
          var countB = 0;
          var countP = 0;
          var countL = 0;
          var countO = 0;
          var countW = 0;
          var data = [];
          var count = [];
          $('#our_table').find('td').each(function (index, item) {
            if (getBackground($(item)) == "rgb(224, 224, 224)") {
              countG = countG + 1;
              data.push(["#e0e0e0"]);
            }
            if (getBackground($(item)) == "rgb(35, 35, 35)") {
              countB = countB + 1;
              data.push(["#232323"]);
            }
            if (getBackground($(item)) == "rgb(255, 192, 203)") {
              countP = countP + 1;
              data.push(["#FFC0CB"]);
            }
            if (getBackground($(item)) == "rgb(185, 239, 248)") {
              countL = countL + 1;
              data.push(["#b9eff8"]);
              count.push
            }
            if (getBackground($(item)) == "rgb(255, 191, 73)") {
              countO = countO + 1;
              data.push(["#ffbf49"]);
            }
            if (getBackground($(item)) == "rgb(244, 244, 244)") {
              countW = countW + 1;
              data.push(["#f4f4f4"]);
            }
            if ($(this).is("#end")) {
              count.push(["grey", countG], ["black", countB], ["pink", countP], ["blue", countL], ["orange", countO]);
              return false;
            }
            $('#data').val(data);
            $('#count').val(count);
            //$('#totalWork span').html("hello");
          });
       });
     });
      
      $(function () {
          $('#applylunchtime').click(function () {
            var countGo = 0;
            var countBo = 0;
            var countPo = 0;
            var countLo = 0;
            var countOo = 0;
            var countWo = 0;
            var datao = [];
            $('#our_table').find('td').each(function (index, item) {
              var rowIndex = $(this).parent().parent().find('tr').index($(this).parent());
              var tdIndex = $(this).parent().find('td').index(this);
              if (getBackground($(item)) == "rgb(224, 224, 224)") {
                countGo = countGo + 1;
                datao.push(["#e0e0e0", rowIndex, tdIndex]);
              }
              if (getBackground($(item)) == "rgb(35, 35, 35)") {
                countBo = countBo + 1;
                datao.push(["#232323", rowIndex, tdIndex]);
              }
              if (getBackground($(item)) == "rgb(255, 192, 203)") {
                countPo = countPo + 1;
                datao.push(["#FFC0CB", rowIndex, tdIndex]);
              }
              if (getBackground($(item)) == "rgb(185, 239, 248)") {
                countLo = countLo + 1;
                datao.push(["#b9eff8", rowIndex, tdIndex]);
                
              }
              if (getBackground($(item)) == "rgb(255, 191, 73)") {
                countOo = countOo + 1;
                datao.push(["#ffbf49", rowIndex, tdIndex]);
              }
              if (getBackground($(item)) == "rgb(244, 244, 244)") {
                countWo = countWo + 1;
                datao.push(["#f4f4f4", rowIndex, tdIndex]);
              }
              if ($(this).is("#end")) {
                return false;
              }
              $('#datao').val(datao);
              //$('#totalWork span').html("hello");
            });
         });
       });
    </script>
  
    <% 
    //String[] colours = (String[]) request.getAttribute("tableArray2");
    //System.out.println(colours[0]);
    //System.out.println(colours[1]);
    //System.out.println(colours[2]);
    %>
    
<script> 

var tableArrJs = $('#data-container').text();
var res = tableArrJs.split(",");
//var arr = JSON.parse(array);
//alert(tableArrJs);//  :(
//var arr = JSON.parse(array);
//console.log(tableArrJs);
var todaysdate = $('#today').text();
$('#week').val(todaysdate); 
var username = $('#welcomeuser').text();
$('#user').val(username);
$('#user1').val(username);
$('#name').val(username);
// The method get data from database then set colour in table
function addCSS(cssText) {
	var style = document.createElement('style'),
		head = document.head || document.getElementsByTagName('head')[0];
	style.type = 'text/css';
	if (style.styleSheet) {
		var func = function () {
			try {
				style.styleSheet.cssText = cssText;
			} catch (e) {

 		}
		}
		if (style.styleSheet.disabled) {
			setTimeout(func, 10);
		} else {
			func();
		}
	} else {
		var textNode = document.createTextNode(cssText);
		style.appendChild(textNode);
	}
	head.appendChild(style);
}


function setColour() {
	var trs = document.querySelectorAll("td");
	var array = res;
	var styleStr = array
		.map(function (color) {
			var colorStr = color.replace('#', '')
			return '.' + colorStr + '{background:' + color + '}'
		})
		.join(' ')

	addCSS(styleStr)

	for (var i = 0; i < 672; i++) {
		trs[i].className = array[i].replace('#', '');
	}

}

setColour()
</script>
  </div>

</body>


</html>
