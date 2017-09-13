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
	
    <u>Change Your Password</u>
</div>
<div class="col-md-12">
<nav class="navbar navbar-default">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="login.jsp">SIGNOUT <span class="sr-only">(current)</span></a></li>
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
    <label for="t2">Email</label>
    <input type="text" class="form-control" id="t2" name="t2" placeholder="Existing email Address" required>
     <label for="t3">Phone Number</label>
    <input type="text" class="form-control" id="t3" name="t3" placeholder="Existing phone number" required>
    <label for="t4">New Password</label>
    <input type="password" class="form-control" id="t4" name="t4" placeholder="Password" required>
     <label for="t5">Confirm Password</label>
    <input type="password" class="form-control" id="t5" name="t5" placeholder="Confirm Password"required>
     
  </div>
  <input type="submit" class="btn btn-primary" value="Submit" />

<%
if((request.getParameter("t1")!=null && request.getParameter("t3")!=null && request.getParameter("t4")!=null && request.getParameter("t5")!=null && request.getParameter("t2")!=null) && ( request.getParameter("t4").equals(request.getParameter("t5"))))
{
	String un=request.getParameter("t1");
	String em=request.getParameter("t2");

	String ph=request.getParameter("t3");
    String p=request.getParameter("t4");
	String cp=request.getParameter("t5");
	boolean flag=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where name='"+un+"' ");
		rs.next();
        String em1=rs.getString(4);
        String ph1=rs.getString(3);
		if(em.equals(em1) && ph.equals(ph1))
		{
			if(p.equals(cp))
			{
				int n=st.executeUpdate("update users set pswd='"+p+"' where name='"+un+"' ");
				if(n!=0)
				{
					out.println("<br><div class='text-danger'>Password Updated</div>");
				}
			}
			else
			{
				out.println("<br><div class='text-danger'>Passwords Mismatched</div>");
			}
		}
		else
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
