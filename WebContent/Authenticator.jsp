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
	String username = request.getParameter("uname");
	String password = request.getParameter("pwd");
	if(username.equals("admin")&& password.equals("admin123") )
	{
		RequestDispatcher req = request.getRequestDispatcher("Welcome.jsp");
		req.forward(request, response);
	}
	else
	{
		RequestDispatcher req = request.getRequestDispatcher("Failed.jsp");
		req.forward(request, response);
	}
	
	
	%>
</body>
</html>