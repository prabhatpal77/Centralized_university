<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">
</head>
<body>
   <center>
      <form>
      <table border="1" cellpadding="10" style="background-color:#caf5ff;">
      <caption><h3>Student Detail</h3></caption>
      <tr>
         <th>Student ID</th>
         <th>Student Name</th>
         <th>Email ID</th>
         <th>Mobile No</th>
         <th>Enrollment No</th>
         <th>Address</th>
         <th></th>
      </tr>
         <%
         String branchid = request.getParameter("branchid");
         
         ResultSet rs = DAO.showAllRecord("select * from studentreg where branchid='"+branchid+"'");
         
         while(rs.next())
         {
         %>
         <tr>
            <td><%out.print(rs.getString(1)); %></td>
            <td><%out.print(rs.getString(2)); %></td>
            <td><%out.print(rs.getString(7)); %></td>
            <td><%out.print(rs.getString(8)); %></td>
            <td><%out.print(rs.getString(18)); %></td>
            <td><%out.print(rs.getString(10)); %></td>
            <td><a href="adminStudentDetail.jsp?stuid=<%out.print(rs.getString(1));%>" class="mainBtns">Detail</a></td>
         </tr>
         <%
         }
         %>
         </table>
      </form>
   </center>
</body>
</html>