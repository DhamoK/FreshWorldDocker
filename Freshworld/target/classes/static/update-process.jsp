<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/traintable";%>
<%!String user = "root";%>
<%!String psw = "Kddhamo@24";%>
<%
String id = request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String cityname=request.getParameter("cityname");
String emailid=request.getParameter("emailid");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set id=?,firstname=?,lastname=?,cityname=?,emailid=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,firstname);
ps.setString(3,lastname);
ps.setString(4,cityname);
ps.setString(5,emailid);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>