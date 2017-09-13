<%@ page language="java" contentType="text/html"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
	String pnr=request.getParameter("t1");

	try{
				Class.forName("com.mysql.jdbc.Driver");	
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","maanas","project");
				Statement st=con.createStatement();
				ResultSet rs,rs1;
				rs=st.executeQuery("select train_name, DOJ, class,no_of_seats from res_detail where pnr_num='"+pnr+"' ");
				rs.next();
				String tr_name=rs.getString(1);
				String doj=rs.getString(2);
				String cls=rs.getString(3);
				int seat=rs.getInt(4);
				out.println(tr_name);

				int rs_upd=0,rs_upd2=0,n=0;
				rs_upd=st.executeUpdate("delete from res_detail where pnr_num='"+pnr+"' ");
				if(doj.equals("Monday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select mon_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set mon_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select mon_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set mon_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
				if(doj.equals("Tuesday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select tue_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set tue_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select tue_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set tue_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
				if(doj.equals("Wednesday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select wed_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set wed_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select wed_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set wed_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
				if(doj.equals("Thursday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select thu_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set thu_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select thu_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set thu_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}

				if(doj.equals("Friday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select fri_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set fri_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select fri_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set fri_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
	
				if(doj.equals("Saturday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select sat_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set sat_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select sat_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set sat_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
		
				if(doj.equals("Sunday"))
				{
					if(cls.equals("AC"))
					{
						rs1=st.executeQuery("select sun_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set sun_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
					else
					{
						rs1=st.executeQuery("select sun_non_ac from seat_avail where train_name='"+tr_name+"' ");
						rs1.next();
						n=seat+rs1.getInt(1);
						rs_upd2=st.executeUpdate("update seat_avail set sun_non_ac='"+n+"' where train_name='"+tr_name+"' ");
					}
				}
}
		catch(Exception e)
		{
			out.println(e.toString());
		}
		
		

	
%>
</body>
</html>
