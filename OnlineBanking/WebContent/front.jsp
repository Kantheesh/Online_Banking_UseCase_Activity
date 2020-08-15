<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
</head>
<body style=background-color:lightgreen;"> 
<form action="bankconnect.jsp" method="post">
<h1 align=center>Use Case Activity</h1>
<fieldset>
<h2>Account 1 Details</h2>
<label><b>S.NO:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text"  name="sno"><br>

<label>ACCOUNT NO:</label> <b></b>
<input type="text"  name="Accno"><br>

<label>Ac Holder:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text " name="AccHolder"><br>

<label>Deposite:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="Deposite"><br>
<input type="submit" value="Enter into DB" style="background-color:#ADD8E6" >
 <b></b>
</fieldset>
</form>
<form action="bankconnect1.jsp" method="post">
<fieldset>
<h2>Account 2 Details</h2>
<label>S.NO:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text"  name="sno"><br>
<label>ACCOUNT NO:</label>&nbsp;
<input type="text"  name="accno"><br>
<label>Ac Holder:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text " name="Holder"><br>
<label>Deposite:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="Deposite"><br>
<input type="submit" value="Enter into DB" style="background-color:#ADD8E6" >
</fieldset>
</form>
<form action="transfer.jsp" method="post">
<fieldset>
<h2>Transactions  </h2>
<input type="submit" value="Transfer" style="background-color:#ADD8E6" >
</fieldset>
</form>
<form action="fetch1.jsp" method=post>
<fieldset>
<h2>Mini Statement Last 5 Transactions</h2>
<input type="submit" value="MINI STATEMENT" style="background-color:#ADD8E6" >
 </fieldset>
</form>
</body>
</html> 
