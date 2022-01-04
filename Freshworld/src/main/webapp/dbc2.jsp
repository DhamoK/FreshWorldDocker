 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/freshworld", "root", "Kddhamo@24");

Statement stat=c.createStatement();
String id=request.getParameter("FC");
int del=stat.executeUpdate("Delete from fruits where FC="+id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>Train <%=request.getParameter("FC")%> details are deleted !!!!</h1>
</body>
</html>