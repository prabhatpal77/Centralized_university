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
//String unilid = session.getValue("unilid").toString();
%>
</head>
<body>
<center>
   <form>
     <table border="1" cellpadding="10" style="background-color:#caf5ff;">
     <caption><h3>Display Notice</h3></caption>
         <tr>
            <th>Notice ID</th>
            <th>Subject</th>
            <th>Detail</th>
            <th>File</th>
            <th>Image</th>
            <th>DateTime</th>
            <th></th>
         </tr>
         <%
            String id = request.getParameter("id");
         
         ResultSet rs = DAO.showAllRecord("select * from notice where publishby='"+id+"'");
         
         while(rs.next())
         {
         %>
         <tr>
        	    <td><%out.print(rs.getString(1)); %></td>
        	    <td><%out.print(rs.getString(3)); %></td>
        	    <td><%out.print(rs.getString(4)); %></td>
        	    <td><a href="adminimg/<%out.print(rs.getString(5)); %>" class="mainBtns" download>Download</a></td>
        	    <td><img src="adminimg/<%out.print(rs.getString(6)); %>" height="100" width="100"/></td>
        	    <td><%out.print(rs.getString(7)); %></td>
        	    <%
        	       out.print("<td><a href=noticeUpdate.jsp?noid="+rs.getString(1)+" class=\"mainBtns\">Update/Delete</a></td>");
        	    %>
        	 </tr>
        	 <%
         }
        	 %>
      </table>
   </form>
</center>
</body>
</html>