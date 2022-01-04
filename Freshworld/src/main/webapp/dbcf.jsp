<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String qty=request.getParameter("qty");
String price=request.getParameter("price");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/freshworld", "root", "Kddhamo@24");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into trains(NAME, QTY, PRICE)values('"+name+"','"+qty+"','"+price+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>New Train details are Successfully added !!!!</h1>
</body>
</html>