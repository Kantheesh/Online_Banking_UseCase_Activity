<%@page import="java.sql.*"%>
<%
String sno=request.getParameter("sno");
String accno=request.getParameter("accno");
String Holder=request.getParameter("Holder");
String Deposite=request.getParameter("Deposite");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/banks","root"," harisha123");
	Statement st=con.createStatement();
	st.executeUpdate("insert into banks(sno,accno,Holder,Deposite) values('"+sno+"','"+accno+"','"+Holder+"','"+Deposite+"')");
	response.sendRedirect("save1.html");
}
catch(Exception e)
{
	response.sendRedirect("error1.html");
}
%>
