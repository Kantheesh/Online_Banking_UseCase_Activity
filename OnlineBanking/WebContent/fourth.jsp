<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Last 5 Transactions</title>
</head>
<body style=background-color:lightgreen;">
<div align=left >
<a href="index.jsp"><b>HOME</b> </a>
</div>
<center>
<h1>Last 5 Transactions</h1>
	<table border="1">
		<tr style="background-color:#E0FFFF" color="blue" align=center >
		    <td>sno</td>
			<td >accno </td>
			<td>Description </td>
			<td>Date</td>
			<td>Balance</td>
			</tr>
<%
Connection Conn=null;
Statement st=null;
ResultSet rs=null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/transfer","root","balu123");
	st=Conn.createStatement();
	String qry=("SELECT * FROM transfer ORDER BY sno ASC");
	rs=st.executeQuery(qry);
	while(rs.next())
	{
		%>
		<tr>
		<td style="background-color:#7BCCB5"><%=rs.getString(1) %></td>
		<td style="background-color:#7BCCB5"><%=rs.getString(2) %></td>
		<td style="background-color:#7BCCB5"><%=rs.getString(3) %></td>
		<td style="background-color:#7BCCB5"><%=rs.getString(4) %></td>
		<td style="background-color:#7BCCB5"><%=rs.getString(5) %></td>
		<% 
	}
}
	catch(Exception ex)
	{
	}
%>
</table>
</body>
</html>

