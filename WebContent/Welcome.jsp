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
<h1>Welcome <%=request.getParameter("uname") %></h1>
<h1>Select the operation you want to perform</h1>

<a href="AddStudent.jsp">Click here to add new Student</a><br>
<a href="CheckReport.jsp">Check report of Existing students</a><br>
<a href="DeleteStudent.jsp">Click here to delete record</a><br>
<a href="AddStudent.jsp">Update Existing record</a>
</center>

</body>
</html>