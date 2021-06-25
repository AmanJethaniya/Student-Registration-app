<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
<h1>Enter student details</h1>
<form action="StudentUtil.jsp">
<table>
<tr>
<td>RollNumber</td>
<td><input type="text" name="RollNum"></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="FirstName"></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="LastName"></td>
</tr>
<tr>
<td>Aggregate Percent</td>
<td><input type="text" name="Percent"></td>
</tr>
<tr>
					
					
					<td></td>
					<td><input type="submit" value="Submit"></td>
</tr>
</table>

</form>
 <a href="Welcome.jsp">Back</a>
</center>

</body>
</html>