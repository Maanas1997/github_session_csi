<%@page import="java.sql.*"%>
<! Doctype html>
<html>
<body>
	<h1 align="center" color="red">Book Tickets</h1>
<form action="reserve.jsp" method="post">
	<table >
		<tr>
			<td>Enter Name</td>
			<td>
				<input type="text" name="t1" placeholder="Enter Name" />
			</td>
		</tr>
		<tr>
			<td>Enter Phone Number</td>
			<td>
				<input type="text" name="t2" placeholder="Enter Phone NUmber" />	
			</td>
		</tr>
		<tr>
			<td>Enter Source Station</td>
			<td>
				<select name="t3">
					<option>Allahabad</option>		
					<option>Lucknow</option>
					<option>Varanasi</option>
				</select>
			</td>
		<tr>
		<tr>
			<td>Enter Destination Station</td>
			<td>
				<select name="t4">
					<option>Delhi</option>		
					<option>Bengaluru</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Enter Day of Journey</td>
			<td>
				<select name="t5">
					<option>Monday</option>
					<option>Tuesday</option>
					<option>Wednesday</option>
					<option>Thursday</option>
					<option>Friday</option>
					<option>Satday</option>
					<option>Sunday</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Enter Number Of Seats</td>
			<td>
				<select name="t6">
					<option>1</option>
					<option>2</option>					
					<option>3</option>
					<option>4</option>			
					<option>5</option>					
					<option>6</option>	
				</select>						
			</td>
		</tr>
		<tr>
			<td>Select Class</td>
			<td>
				<select name="t7">
					<option>AC</option>
					<option>NON-AC</option>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit"/>
			</td>
		</tr>	
	</table>
</form>
	</body>
</html>

