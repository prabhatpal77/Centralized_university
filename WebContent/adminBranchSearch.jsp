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
<%
 
%>
</head>
<body>
<center>
   <form>
   <table border="1" cellpadding="10" style="background-color:#caf5ff;">
   <caption><h3>Branch Detail</h3></caption>
   <tr>
      <th>Branch ID</th>
      <th>Branch Name</th>
      <th>Branch Icon</th>
      <th>Branch Desc</th>
      <th></th>  
    </tr>
       <%
         String courseid = request.getParameter("courseid");
       
       ResultSet rs = DAO.showAllRecord("select * from branchreg where courseid='"+courseid+"'");
       
       while(rs.next())
       {
       %>
       <tr>
          <td><%out.print(rs.getString(2)); %></td>
          <td><%out.print(rs.getString(3)); %></td>
          <td><img src="adminimg/<%out.print(rs.getString(4)); %>" height="100" width="100"/></td>
          <td><%out.print(rs.getString(5)); %></td>
          <%
                    out.print("<td><a href=adminBranchStuSearch.jsp?branchid="+rs.getString(2)+" class=\"mainBtns\">Student</a></td>");
          %>
       </tr>
       <%
       }
       %>
   </form>
</center>
</body>
</html>