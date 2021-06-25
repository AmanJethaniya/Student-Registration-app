<%@page import="com.aman.service.StudentServiceImpl"%>
<%@page import="com.aman.service.StudentService"%>
<%@page import="com.aman.businessbean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 style="color:green">
<%
StudentBean studentBean=new StudentBean();
studentBean.setRollNumber(Integer.parseInt(request.getParameter("RollNum")));
studentBean.setFirstName(request.getParameter("FirstName"));
studentBean.setLastName(request.getParameter("LastName"));
studentBean.setPercentage(Double.parseDouble(request.getParameter("Percent")));
StudentService service=new StudentServiceImpl();
Integer rollnum=service.addStudent(studentBean);
if(rollnum==null)
{
	out.print("Student not added, try again");
}
else
{
	out.print("Student added successfully with id,"+rollnum);
}

%>
</h3>
</body>
</html>