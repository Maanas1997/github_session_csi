<%@ page language="java" contentType="text/html"%>
<%@ page import="java.sql.*" %>

<html>
<body>
<%
String name=request.getParameter("t1");
String card_num=request.getParameter("t2");
String pin=request.getParameter("t3");
String con_pin=request.getParameter("t4");
int amt=Integer.parseInt(request.getParameter("t5"));

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
	Statement st=con.createStatement();
	int rs_upd;
	if(pin.equals(con_pin))
	{
		rs_upd=st.executeUpdate("insert into rail_wallet values('"+name+"','"+card_num+"','"+pin+"',"+amt+")");
		out.println("Railway Wallet Successfully Created");
	}
	else
	{
		out.println("Error:404");
	}
}
catch(Exception e)
{
	out.println(e.toString());
}
%>
</body>
</html>
