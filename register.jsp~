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

<div class="col-md-12 " style="font-family:impact;color:red;font-size:35px;text-align:center">
	
    <u>Register To Us</u>
</div>
<div class="col-md-12">
<nav class="navbar navbar-default">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">SIGNOUT<span class="sr-only">(current)</span></a></li>
      </ul>
    </div>
</nav>
</div>
<div class="col-md-12 ">
<hr>
<form role="form" method="get" action="">
  <div class="form-group" >
    <label for="t1">User Name</label>
    <input type="text" class="form-control" id="t1" name="t1" placeholder="Enter User Name">
    <label for="t2">Password</label>
    <input type="password" class="form-control" id="t2" name="t2" placeholder="Password">
     <label for="t3">Confirm Password</label>
    <input type="password" class="form-control" id="t3" name="t3" placeholder="Confirm Password">
     <label for="t4">Email</label>
    <input type="text" class="form-control" id="t4" name="t4" placeholder="Valid email Address">
     <label for="t5">Phone Number</label>
    <input type="text" class="form-control" id="t5" name="t5" minlength="10" maxlength="10" placeholder="Valid 10 digit phone number">
  </div>
  <input type="submit" class="btn btn-primary" value="Submit" />

<%
if((request.getParameter("t1")!=null && request.getParameter("t3")!=null && request.getParameter("t4")!=null && request.getParameter("t5")!=null && request.getParameter("t2")!=null) && ( request.getParameter("t2").equals(request.getParameter("t3"))))
{
	String un=request.getParameter("t1");
	String p=request.getParameter("t2");

	String em=request.getParameter("t4");
        String ph=request.getParameter("t5");
	out.println(un);
	boolean flag=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
		Statement st=con.createStatement();
		int rs=st.executeUpdate("insert into  users values('"+un+"','"+p+"','"+ph+"','"+em+"')");
		if(rs!=0)
		{
			flag=true;
			
			out.println("<br><div class='text-danger'>You have been registered</div>");
			
		}
		
		if(flag==false)
		{
			out.println("<br><div class='text-danger'>Invalid Entry</div>");
		}
	}catch(Exception e)
	{
		out.println(e.toString());
	}
}
%>
<hr>
</div>
</div>
</div>
</body>
</html>
