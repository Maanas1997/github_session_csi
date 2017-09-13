<%@ page language="java" contentType="text/html"%>
<%@ page import="java.sql.*" %>

<html>
<body>

<%
String n=request.getParameter("t1");
String phn=request.getParameter("t2");
String src=request.getParameter("t3");
String des=request.getParameter("t4");
String doj=request.getParameter("t5");
int seat=Integer.parseInt(request.getParameter("t6"));
String cls=request.getParameter("t7");

try
{
	int amt=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select train_name from train_detail where src_stn='"+src+"' and des_stn='"+des+"' ");
	rs.next();
	String tr_name=rs.getString(1);
	if(cls.equals("AC"))
	{
		ResultSet rs2=st.executeQuery("select fare_ac from fare_detail where train_name='"+tr_name+"' ");
		rs2.next();
		amt=rs2.getInt(1)*seat;
	}	
	else
	{	
		ResultSet rs2=st.executeQuery("select fare_non_ac from fare_detail where train_name='"+tr_name+"' ");
		rs2.next();
		amt=rs2.getInt(1)*seat;
	}	
	st.executeUpdate("insert into current_detail() values('"+n+"','"+phn+"','"+tr_name+"','"+doj+"','"+cls+"','"+seat+"','"+amt+"') ");
	response.sendRedirect("pay.html");
}
catch(Exception e)
{
	out.println(e.toString());
}

%>

</body>
</html>

