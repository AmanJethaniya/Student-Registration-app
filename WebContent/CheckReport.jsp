<%@page import="com.aman.businessbean.StudentBean"%>
<%@page import="java.util.List"%>
<%@page import="com.aman.service.StudentServiceImpl"%>
<%@page import="com.aman.service.StudentService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
StudentService service=new StudentServiceImpl();
List<StudentBean> list=service.getStudentList();
int i=0;
%>
<center>
<h1>Following is the List of Enrolled Students</h1>
<table border="1">
<tr>
<td>S.NO.</td>
<td>Roll No.</td>
<td>First Name</td>
<td>Last Name</td>
<td>Percentage</td>
</tr>
<%for(StudentBean sb:list){ i++;%>
<tr>
<td><%=i %></td>
<td><%=sb.getRollNumber() %></td>
<td><%= sb.getFirstName() %></td>
<td><%= sb.getLastName() %></td>
<td><%= sb.getPercentage() %></td>
</tr>
<%} %>
</table>
</center>
<a href="Welcome.jsp">Click here to get back</a>
</body>
</html>