<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
 <html>
 <head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="/resources/css/timesheetspage.css">
<style>
.allbutton{
  border-radius: 5px;
  background-color: #232323;
  color: white;
  padding: 7px 8px;
  text-align: center;
  display: inline-block;
  
  }
.divider{
  width:5px;
  height:auto;
  display:inline-block;
}
table{
  width:80%;
}
table, th, td {
  border: 3px solid #232323;
  border-collapse: collapse;
}

table tbody{
  display:block;
  width: 101%;
  overflow: auto;
  height: 500px;
  border-collapse: collapse;
}

table thead tr {
   display: block;
}

table thead {
  background: #232323;
  color:white;
}

table th,td {
  padding: 10px;
  text-align: centre;
  width: 122px;
  border: 1px solid #232323;
}
body {
 overflow-x :hidden;


}
.header {
  background-color: #232323;
  padding: 0.6%;
  color: white;
  font-size: 42%;
  width:100%; 
} 

* {
  box-sizing: border-box;
}

.column1 {
  float: left;
  width: 15%;
  padding: 10px;
  height:900px;
  margin:0% 0% 0% 0.4%  ;
 
}
.column2 {
  float: left;
  width: 63.2%;
  padding: 10px;
  height:900px;
  overflow-y: auto;
  display:block;
  border-collapse: collapse;
}
.column3 {
  float: left;
  width:10%;
  padding: 10px;
  height:900px;
  overflow-y: auto;
  
}

.row:after {
  content: "";
  display: table;
  clear: both;
}
}
</style>

  <script type = "text/javascript">
     
    	
         //alert(stringdate);
         //document.write(today);
     
      
            function confirmation() {
               var retVal = confirm("Do you want to accept the timesheet ?");
               var timesheet = document.getElementById('time').innerHTML;
               var timedate = document.getElementById('date').innerHTML;
               if( retVal == true ) {
                      var div = document.createElement('div');
                      div.className = 'row';
                      div.innerHTML = timesheet + timedate;
                      document.getElementById('accept').appendChild(div);
                      var elem = document.getElementById('remove');
                      elem.parentNode.removeChild(elem);
                    
                  return true;
               }
               else {
                  return false;
               }
            }
            function confirmation2() {
                var retVal = confirm("Do you want to reject the timesheet ? ");
                showReason();
                var timesheet = document.getElementById('time').innerHTML;
                var timedate = document.getElementById('date').innerHTML;
                if( retVal == true ) {
                   var div2 = document.createElement('div');
                       div2.className = 'row';
                       div2.innerHTML = timesheet +timedate;
                       document.getElementById('reject').appendChild(div2);
                       var elem = document.getElementById('remove');
                       elem.parentNode.removeChild(elem);
                   return true;
                }
                else {
                   return false;
                }
             }
             function showReason() {
                 var name = prompt('Please give the reason below:');
                 
                     alert("Timesheet rejected!");
                 
             }
        
      </script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<title>ManagerPage</title>

<link rel="stylesheet" type="text/css" href="loginpage.css">
</head>
<body>
<p id="demo"></p>
<div class="header">

<a href="/" style="width:5px;height:50px;position:absolute;top:2%;right:75px;color:white; text-decoration:none;font-size: 222%; font-weight : bold;" >Logout</a>
<h1>Manager Worksheet</h1>
</div>

<div class="row">
  <div class="column1" style="background-color:#8c8c8c;">
    <h4>Personal Infomation</h4>
	<p style="font-family: 'Courier New', Courier, monospace;" ><strong>Your timezone is:</strong></p>
  <select style="font-family: 'Courier New', Courier, monospace; width: 200px;">

   <option value="Etc/GMT+12">(GMT-12:00) International Date Line West</option>
   <option value="Pacific/Midway">(GMT-11:00) Midway Island, Samoa</option>
   <option value="Pacific/Honolulu">(GMT-10:00) Hawaii</option>
   <option value="US/Alaska">(GMT-09:00) Alaska</option>
   <option value="America/Los_Angeles">(GMT-08:00) Pacific Time (US & Canada)</option>
   <option value="America/Tijuana">(GMT-08:00) Tijuana, Baja California</option>
   <option value="US/Arizona">(GMT-07:00) Arizona</option>
   <option value="America/Chihuahua">(GMT-07:00) Chihuahua, La Paz, Mazatlan</option>
   <option value="US/Mountain">(GMT-07:00) Mountain Time (US & Canada)</option>
   <option value="America/Managua">(GMT-06:00) Central America</option>
   <option value="US/Central">(GMT-06:00) Central Time (US & Canada)</option>
   <option value="America/Mexico_City">(GMT-06:00) Guadalajara, Mexico City, Monterrey</option>
   <option value="Canada/Saskatchewan">(GMT-06:00) Saskatchewan</option>
   <option value="America/Bogota">(GMT-05:00) Bogota, Lima, Quito, Rio Branco</option>
   <option value="US/Eastern">(GMT-05:00) Eastern Time (US & Canada)</option>
   <option value="US/East-Indiana">(GMT-05:00) Indiana (East)</option>
   <option value="Canada/Atlantic">(GMT-04:00) Atlantic Time (Canada)</option>
   <option value="America/Caracas">(GMT-04:00) Caracas, La Paz</option>
   <option value="America/Manaus">(GMT-04:00) Manaus</option>
   <option value="America/Santiago">(GMT-04:00) Santiago</option>
   <option value="Canada/Newfoundland">(GMT-03:30) Newfoundland</option>
   <option value="America/Sao_Paulo">(GMT-03:00) Brasilia</option>
   <option value="America/Argentina/Buenos_Aires">(GMT-03:00) Buenos Aires, Georgetown</option>
   <option value="America/Godthab">(GMT-03:00) Greenland</option>
   <option value="America/Montevideo">(GMT-03:00) Montevideo</option>
   <option value="America/Noronha">(GMT-02:00) Mid-Atlantic</option>
   <option value="Atlantic/Cape_Verde">(GMT-01:00) Cape Verde Is.</option>
   <option value="Atlantic/Azores">(GMT-01:00) Azores</option>
   <option value="Africa/Casablanca">(GMT+00:00) Casablanca, Monrovia, Reykjavik</option>
   <option value="Etc/Greenwich" selected="selected">(GMT+00:00) United Kingdom</option>
   <option value="Europe/Amsterdam">(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna</option>
   <option value="Europe/Belgrade">(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague</option>
   <option value="Europe/Brussels">(GMT+01:00) Brussels, Copenhagen, Madrid, Paris</option>
   <option value="Europe/Sarajevo">(GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb</option>
   <option value="Africa/Lagos">(GMT+01:00) West Central Africa</option>
   <option value="Asia/Amman">(GMT+02:00) Amman</option>
   <option value="Europe/Athens">(GMT+02:00) Athens, Bucharest, Istanbul</option>
   <option value="Asia/Beirut">(GMT+02:00) Beirut</option>
   <option value="Africa/Cairo">(GMT+02:00) Cairo</option>
   <option value="Africa/Harare">(GMT+02:00) Harare, Pretoria</option>
   <option value="Europe/Helsinki">(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius</option>
   <option value="Asia/Jerusalem">(GMT+02:00) Jerusalem</option>
   <option value="Europe/Minsk">(GMT+02:00) Minsk</option>
   <option value="Africa/Windhoek">(GMT+02:00) Windhoek</option>
   <option value="Asia/Kuwait">(GMT+03:00) Kuwait, Riyadh, Baghdad</option>
   <option value="Europe/Moscow">(GMT+03:00) Moscow, St. Petersburg, Volgograd</option>
   <option value="Africa/Nairobi">(GMT+03:00) Nairobi</option>
   <option value="Asia/Tbilisi">(GMT+03:00) Tbilisi</option>
   <option value="Asia/Tehran">(GMT+03:30) Tehran</option>
   <option value="Asia/Muscat">(GMT+04:00) Abu Dhabi, Muscat</option>
   <option value="Asia/Baku">(GMT+04:00) Baku</option>
   <option value="Asia/Yerevan">(GMT+04:00) Yerevan</option>
   <option value="Asia/Kabul">(GMT+04:30) Kabul</option>
   <option value="Asia/Yekaterinburg">(GMT+05:00) Yekaterinburg</option>
   <option value="Asia/Karachi">(GMT+05:00) Islamabad, Karachi, Tashkent</option>
   <option value="Asia/Calcutta">(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi</option>
   <option value="Asia/Calcutta">(GMT+05:30) Sri Jayawardenapura</option>
   <option value="Asia/Katmandu">(GMT+05:45) Kathmandu</option>
   <option value="Asia/Almaty">(GMT+06:00) Almaty, Novosibirsk</option>
   <option value="Asia/Dhaka">(GMT+06:00) Astana, Dhaka</option>
   <option value="Asia/Rangoon">(GMT+06:30) Yangon (Rangoon)</option>
   <option value="Asia/Bangkok">(GMT+07:00) Bangkok, Hanoi, Jakarta</option>
   <option value="Asia/Krasnoyarsk">(GMT+07:00) Krasnoyarsk</option>
   <option value="Asia/Hong_Kong">(GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi</option>
   <option value="Asia/Kuala_Lumpur">(GMT+08:00) Kuala Lumpur, Singapore</option>
   <option value="Asia/Irkutsk">(GMT+08:00) Irkutsk, Ulaan Bataar</option>
   <option value="Australia/Perth">(GMT+08:00) Perth</option>
   <option value="Asia/Taipei">(GMT+08:00) Taipei</option>
   <optio<p id="date"></p>n value="Asia/Tokyo">(GMT+09:00) Osaka, Sapporo, Tokyo</option>
   <option value="Asia/Seoul">(GMT+09:00) Seoul</option>
   <option value="Asia/Yakutsk">(GMT+09:00) Yakutsk</option>
   <option value="Australia/Adelaide">(GMT+09:30) Adelaide</option>
   <option value="Australia/Darwin">(GMT+09:30) Darwin</option>
   <option value="Australia/Brisbane">(GMT+10:00) Brisbane</option>
   <option value="Australia/Canberra">(GMT+10:00) Canberra, Melbourne, Sydney</option>
   <option value="Australia/Hobart">(GMT+10:00) Hobart</option>
   <option value="Pacific/Guam">(GMT+10:00) Guam, Port Moresby</option>
   <option value="Asia/Vladivostok">(GMT+10:00) Vladivostok</option>
   <option value="Asia/Magadan">(GMT+11:00) Magadan, Solomon Is., New Caledonia</option>
   <option value="Pacific/Auckland">(GMT+12:00) Auckland, Wellington</option>
   <option value="Pacific/Fiji">(GMT+12:00) Fiji, Kamchatka, Marshall Is.</option>
   <option value="Pacific/Tongatapu">(GMT+13:00) Nuku'alofa</option>
   
    <?php foreach(tz_list() as $t) { ?>
      <option value="<?php print $t['zone'] ?>">
        <?php print $t['diff_from_GMT'] . ' - ' . $t['zone'] ?>
      </option>
    <?php } ?>
   </select>
  
  </div>
   <div id=""class="column2" style="background-color:#f4f4f4;">
    <h2>Employee Timesheets</h2><p id="date"></p>
    <br/>
    <hr/> 
    <div id = "remove">
        <br/>
      <form>
      
      <div style="overflow: hidden;">
    <p id ="time" style="float: left;">&nbsp&nbsp Employee1 </p> 
 
    <p style="float: right;"> defaultwork:42h &nbsp&nbsp  overtimework:7.5h &nbsp&nbsp  absent:3h &nbsp&nbsp  bankholiday:0 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
</div>

    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#table1">..details</button>
  <div id="table1" class="collapse">
  <table id="our_table1"><thead>
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
    <th rowspan="5">00:00-00:59</th><tr><td > </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">01:00-01:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">02:00-02:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">03:00-03:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">04:00-04:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">05:00-05:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">06:00-06:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">07:00-07:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">08:00-08:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">09:00-09:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
   
    
    <th rowspan="5">10:00-10:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">11:00-11:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">12:00-12:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>

    <th rowspan="5">13:00-13:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>

    <th rowspan="5">14:00-14:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">15:00-15:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">16:00-16:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>


    <th rowspan="5">17:00-17:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">18:00-18:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">19:00-19:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">20:00-20:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">21:00-21:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">22:00-22:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">23:00-23:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

 </tbody>

</table>
  </div>
          <input class="allbutton"type = "button" value = "Reject" style="float: right;"  onclick = "confirmation2();" />
         <input class="allbutton" type = "button" value = "Accept" style="float: right;"  onclick = "confirmation();" />
       
       
         
      </form>
      <hr/>
      </div>
     <div id = "remove">
       <br/>
      <form>
          <div style="overflow: hidden;">
    <p id ="time" style="float: left;">&nbsp&nbsp Employee2 </p>
    
    <p style="float: right;"> defaultwork:45h &nbsp&nbsp  overtimework:3.5h &nbsp&nbsp  absent:0 &nbsp&nbsp  bankholiday:0 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
</div>
         <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#table2">..details</button>
  <div id="table2" class="collapse">
  <table id="our_table2">
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
    <th rowspan="5">00:00-00:59</th><tr><td > </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">01:00-01:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">02:00-02:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">03:00-03:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">04:00-04:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">05:00-05:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">06:00-06:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">07:00-07:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">08:00-08:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">09:00-09:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
   
    
    <th rowspan="5">10:00-10:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">11:00-11:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">12:00-12:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>

    <th rowspan="5">13:00-13:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>

    <th rowspan="5">14:00-14:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">15:00-15:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">16:00-16:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>


    <th rowspan="5">17:00-17:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">18:00-18:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">19:00-19:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">20:00-20:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">21:00-21:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">22:00-22:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">23:00-23:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

 </tbody>

</table>
  </div>
          <input class="allbutton"type = "button" value = "Reject" style="float: right;"  onclick = "confirmation2();" />
         <input class="allbutton" type = "button" value = "Accept" style="float: right;"  onclick = "confirmation();" />
       
       
         
      </form>
      <hr/>
      </div>
      <div id = "remove">
       <br/>
      <form>
          <div style="overflow: hidden;">
    <p id ="time" style="float: left;">&nbsp&nbsp Employee3 &nbsp</p>
    <p style="float: right;"> defaultwork:37h &nbsp&nbsp  overtimework:8.5h &nbsp&nbsp absent:8h &nbsp&nbsp   bankholiday:0 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
</div>
   <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#table3">..details</button>
  <div id="table3" class="collapse">
  <table id="our_table3">
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
    <th rowspan="5">00:00-00:59</th><tr><td > </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">01:00-01:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">02:00-02:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">03:00-03:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">04:00-04:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">05:00-05:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">06:00-06:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">07:00-07:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">08:00-08:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">09:00-09:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
   
    
    <th rowspan="5">10:00-10:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">11:00-11:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">12:00-12:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>

    <th rowspan="5">13:00-13:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>

    <th rowspan="5">14:00-14:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">15:00-15:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">16:00-16:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>


    <th rowspan="5">17:00-17:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">18:00-18:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">19:00-19:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">20:00-20:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">21:00-21:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">22:00-22:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">23:00-23:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

 </tbody>

</table>
  </div>
          <input class="allbutton"type = "button" value = "Reject" style="float: right;"  onclick = "confirmation2();" />
         <input class="allbutton" type = "button" value = "Accept" style="float: right;"  onclick = "confirmation();" />
       
       
         
      </form>
      <hr/>
      </div>
       <div id = "remove">
       <br/>
      <form>
          <div style="overflow: hidden;">
    <p id ="time" style="float: left;">&nbsp&nbsp Employee4 &nbsp </p>
    
    <p style="float: right;"> defaultwork:39h &nbsp&nbsp  overtimework:4.5h &nbsp&nbsp absent:0h &nbsp&nbsp   bankholiday:0 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
</div>
   <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#table4">..details</button>
  <div id="table4" class="collapse">
  <table id="our_table4">
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
    <th rowspan="5">00:00-00:59</th><tr><td > </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">01:00-01:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">02:00-02:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">03:00-03:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">04:00-04:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">05:00-05:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">06:00-06:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">07:00-07:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">08:00-08:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">09:00-09:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
   
    
    <th rowspan="5">10:00-10:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">11:00-11:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">12:00-12:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>
    <tr><td > </td><td > </td><td > </td><td > </td><td> </td><td> </td><td > </td></tr>

    <th rowspan="5">13:00-13:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>

    <th rowspan="5">14:00-14:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">15:00-15:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td > </td><td > </td></tr>

    <th rowspan="5">16:00-16:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td > </td></tr>


    <th rowspan="5">17:00-17:59</th><tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td bgcolor="#b9eff8"> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">18:00-18:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">19:00-19:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">20:00-20:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">21:00-21:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">22:00-22:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

    <th rowspan="5">23:00-23:59</th><tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>
    <tr><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td></tr>

 </tbody>

</table>
<script>
	 var today = new Date();
	 var dd = String(today.getDate()).padStart(2, '0');
	 var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	 var yyyy = today.getFullYear();
	 today = mm + '/' + dd + '/' + yyyy;
      var datetoday=today.toString();
	 document.getElementById("date").innerHTML = datetoday;
</script>
  </div>
          <input class="allbutton"type = "button" value = "Reject" style="float: right;"  onclick = "confirmation2();" />
         <input class="allbutton" type = "button" value = "Accept" style="float: right;"  onclick = "confirmation();" />
       
       
         
      </form>
      <hr/>
      </div>
  </div>
   <div id="accept" class="column3" style="background-color: #999999;" >
    <h5>Accepted Timesheets</h5>
    
  </div>
   <div id="reject" class="column3" style="background-color:#b3b3b3;">
    <h5>Rejected Timesheets</h5>
  </div>
   </div>


</body>

</html>