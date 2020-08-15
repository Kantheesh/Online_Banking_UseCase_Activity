<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FETCHING THE DATA FROM DATABASE</title>
</head>
<bodystyle=background-color:lightgreen;">
<div align=left >
<a href="index.jsp"><b>HOME</b> </a>
</div>
<center>
<h1>Details about acc-1</h1>
	<table border="1">
		<tr style="background-color:#E0FFFF" color="blue" >
		<td>acc_no</td>
		<td >ac1_initial bal </td>
			<td >ac1_debit </td>
			<td>ac1_bal </td>
			<td>DATE </td>	
			</tr>
<%
Connection Conn=null;
Statement st=null;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","balu123");
	st=Conn.createStatement();
	String qry=("SELECT accno,bank.bank.Deposite,bank.bank.Deposite-23000,bank.bank.Deposite-1000,CURDATE()+0  from bank");
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
<table>
<h1>Details about acc-2</h1>
<table border="1">
		<tr style="background-color:#E0FFFF" color="blue" align=center >
		<td>Acc_no</td>
		<td >ac2_initial bal </td>
			<td >ac2_credit </td>
			<td>ac2_bal </td>
			<td>DATE  </td>		
			</tr>
<%
Connection myConn=null;
Statement myst=null;
ResultSet myrs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	myConn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/banks","root","balu123");
	myst=myConn.createStatement();
	String qry=("SELECT accno,banks.banks.Deposite,banks.banks.Deposite-34000,banks.banks.Deposite+1000, CURDATE()+0 from banks");
	myrs=myst.executeQuery(qry);
	while(myrs.next())
	{
		%>
		<tr>
		<td style="background-color:#7BCCB5"><%=myrs.getString(1) %></td>
		<td style="background-color:#7BCCB5"><%=myrs.getString(2) %></td>
		<td style="background-color:#7BCCB5"><%=myrs.getString(3) %></td>
		<td style="background-color:#7BCCB5"><%=myrs.getString(4) %></td>
		<td style="background-color:#7BCCB5"><%=myrs.getString(5) %></td>
		<% 
	}
}
	catch(Exception ex)
	{
	}
%>
</table>
<br>
<br>
<br>
<form  action=fetch1.jsp method=post>
<input type="submit" value="MINI-STATEMENTS" style="background-color:#ADD8E6" >
</form>
</body>
</html>
