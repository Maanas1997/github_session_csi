<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="script/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	

</head>

<body>

<div class="container">
<div class="row">

<div class="col-md-12 " style="font-family:impact;color:red;font-size:55px;text-align:center">
	
    <u>WELCOME</u>
</div>

<div class="col-md-12">
<nav class="navbar navbar-default">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
      	<li><a href="register.jsp">Register</a></li>
		<li><a href="login.jsp">Sign Out</a></li>
      </ul>
    </div>
</nav>

</div>
<div class="col-md-12 " align="center">
 <button onclick="myFunction1()" class="btn btn-primary btn-lg">Book Ticket</button> 
    </div>
	&nbsp
	&nbsp
<div class="col-md-12 " align="center">
 <button onclick="myFunction2()" class="btn btn-primary btn-lg">Cancel Ticket</button> 
    </div>
<br>
<br>
<br><br><br> 
<script src="jquery.min.js"></script>
<script> 
		$(document).ready(function(){
    	$("#flip").click(function(){
 	    $("#panel").slideDown("slow");
   		 });
	});
	</script>
 
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
<div id="flip">About Us!!!</div>
<div id="panel">Hello Guys!!!<br>This is my first Attempt in Web Development</div>


	<!--<div class="col-sm-offset-2 col-sm-10">
      <input type="button" name="b3" class="btn btn-primary" value="Fare Enquiry"/>
    </div>
		
	<div class="col-sm-offset-2 col-sm-10">
      <input type="button" name="b4" class="btn btn-primary" value="Cancel Ticket"/>
    </div>-->
<script language="javascript">
function myFunction1(){
       window.location = 'resn.html';
   }
function myFunction2(){
       window.location = 'cancel.html';
   }
</script>


</body>
</html>
