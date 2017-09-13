<%@ page language="java" contentType="text/html"%>
<%@ page import="java.sql.*" %>

<html>
<body>
<%
String uname=request.getParameter("t1");
String c_num=request.getParameter("t2");
String p=request.getParameter("t3");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
	Statement st=con.createStatement();
	ResultSet rs2=st.executeQuery("select * from current_detail");
	rs2.next();
	String n=rs2.getString(1);
	String phn=rs2.getString(2);
	String tr_name=rs2.getString(3);
	String doj=rs2.getString(4);
	String cls=rs2.getString(5);
	int seat=rs2.getInt(6);
	int a=rs2.getInt(7);
	out.println("hello");
	out.println(n);
	PreparedStatement ps;
	String sql = "DELETE FROM current_detail WHERE name='"+n+"' ";
	ps = con.prepareStatement(sql);
	int ch = ps.executeUpdate();

	//int ch=st.executeUpdate("delete from current_detail where name='"+n+"' " );
	if(ch!=0)
	{
		out.println("yes");
		out.println(ch);
	}
	else
	{
		out.println("no");             
		out.println(ch);
	}
	String x1=doj.substring(0,3)+"_"+cls;
	x1=x1.trim();
	String str="select "+x1+" from seat_detail where train_name='"+tr_name+"' ";
	ResultSet rs1=st.executeQuery(str);
	rs1.next();
	int seat_avail=rs1.getInt(1);
	if(seat_avail>=seat)
	{								
		ResultSet rs=st.executeQuery("select * from rail_wallet");
		int rs_upd1=0,rs_upd2=0;
		while(rs.next())
		{
			String un=rs.getString(1);
			String card_num=rs.getString(2);
			String pin=rs.getString(3);
			int amt=rs.getInt(4);
			if(request.getParameter("t2").equals(card_num) && request.getParameter("t3").equals(pin))
			{
				out.println(a);
				if(amt>=a)
				{
					int current_amt=amt-a;
					rs_upd1=st.executeUpdate("update rail_wallet set amt='"+current_amt+"' where card_num='"+c_num+"' ");				
					int rem=seat_avail-seat;
					String pnr=n+"_"+tr_name+"_"+doj.substring(0,3)+"_"+cls;
					String x2=doj.substring(0,3)+"_"+cls;
					x2=x2.trim();
					x2=x2+"='"+rem+"'";
					x2=x2.trim();
					//String str="select "+x1+" from seat_detail where train_name='"+tr_name+"' ";
					String str2="update seat_detail set "+x2+" where train_name='"+tr_name+"' ";
					st.executeUpdate(str2);
					st.executeUpdate("insert into res_detail values('"+n+"','"+phn+"','"+tr_name+"','"+doj+"','"+cls+"','"+seat+"','"+pnr+"','"+a+"') ");
					out.println("Payment Successful!!!<br>");
					out.println("Congrats!!! Your Ticket is Confirmed<br>");
					out.println("PNR NUMBER: "+pnr);
					break;
				}
				else
				{
					out.println("Sorry!!! Unsufficient Balance");
					break;
				}
			}
			else
			{
				out.println("Invalid Username or Password");
			}
		
		}
	}
	else
	{
		out.println("Sorry!!! Seat Unavailable");
	}
}
catch(Exception e)
{
	out.println(e.toString());
}
%>
</body>
</html>
			

