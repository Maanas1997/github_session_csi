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
	
    <u>Rail Reservation System</u>
</div>
<div class="col-md-12">
<nav class="navbar navbar-default">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
      	<li><a href="register.jsp">Register</a></li>
      </ul>
    </div>
</nav>

</div>
<div class="col-md-12 ">
<hr>
<form role="form" method="get" action="">
  <div class="form-group" >
    <label for="t1">User Name</label>
    <input type="text" class="form-control" id="t1" name="t1" placeholder="Enter User Name" required>
  </div>
  <div class="form-group">
    <label for="t2">Password</label>
    <input type="password" class="form-control" id="t2" name="t2" placeholder="Password" required>
  </div>
  <input type="submit" class="btn btn-primary" value="Login" />
  <br>
  <a href="change2.jsp">Forgot password</a>
<%
if(request.getParameter("t1")!=null || request.getParameter("t2")!=null)
{
	String un=request.getParameter("t1");
	String pw=request.getParameter("t2");
	boolean flag=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users");
		while(rs.next())
		{	
			String u="",p="";
			u=rs.getString(1);
			p=rs.getString(2);		
			if(request.getParameter("t1").equals(u) && request.getParameter("t2").equals(p))
			{
					out.println("LOGIN SUCCESSFUL");
					out.println("Phone number: "+rs.getString(3));
					out.println("Email ID: "+rs.getString(4));
					flag=true;
					response.sendRedirect("welcome.jsp");
			}
			
		}
		
	
		if(flag==false)
		{
			out.println("<br><div class='text-danger'>Invalid User Name or Password!!!</div>");
		}
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
}	
%>
<hr><br>
</div>
<div class="col-md-12 "class="col-md-12 " style="font-family:impact;color:red;" >
<marquee bahavior="alternate">We wish you a safe journey.</marquee>
</div>
</div>
</div>
</body>
</html>
