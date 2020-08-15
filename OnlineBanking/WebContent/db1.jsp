<%@page import="java.sql.*"%>
<%
String sno=request.getParameter("sno");
String Accno=request.getParameter("Accno");
String AccHolder=request.getParameter("AccHolder");
String Deposite=request.getParameter("Deposite");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root"," harisha123");
	Statement st=con.createStatement();
	st.executeUpdate("insert into bank (sno,Accno,AccHolder,Deposite) values('"+sno+"','"+Accno+"','"+AccHolder+"','"+Deposite+"')");
	response.sendRedirect("save.html");
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>
