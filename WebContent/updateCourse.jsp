<%@page import="java.sql.ResultSet"%>
<%@page import="bs.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">

<%session.getValue("ulid"); %>
</head>
<body>
<center>
   <form action="courseUpDel.jsp">
   <%
      String courseid = request.getParameter("courseid");
     ResultSet rs = DAO.showAllRecord("select * from coursereg where courseid='"+courseid+"'");
     while(rs.next())
     {
    	
   %>
     <table border="1" cellpadding="10" style="background-color:#caf5ff;">
     <caption><h3>Course Update / Delete</h3></caption>
        <tr>
          <td><b>Course ID</td>
          <td><input type="text" name="courseid" value="<% out.print(rs.getString(1)); %>"/></td>
        </tr>
        <tr>
            <td><b>Course Name</td>
            <td><input type="text" name="coursename" value="<% out.print(rs.getString(2)); %>"/></td>
          </tr>
          <tr>
            <td><b>Course Icon</td>
            <td><img src=adminimg/<% out.print(rs.getString(3)); %> height="100" width="100"/><input type="file" name="courseicon"/></td>
          </tr>
          <tr>
            <td><b>Course Desc</td>
            <td><textarea name="coursedesc"><% out.print(rs.getString(4)); %></textarea></td>
          </tr>
          <tr>
            <td><input type="submit" name="btn" class="mainBtn" value="Update"/></td>
            <td><input type="submit" name="btn" class="mainBtn" value="Delete"/></td>
          </tr>
          <% } %>
     </table>
   </form>
</center>
</body>
</html>