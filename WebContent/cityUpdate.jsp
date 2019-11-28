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
 String ciid = request.getParameter("ciid");
%>
</head>
<body>
 <center>
    <form action="cityUpdateDelete.jsp">
       <%
       ResultSet rs = DAO.showAllRecord("select * from city where ciid='"+ciid+"'");
       while(rs.next())
       {       
       %>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
       <caption><h3>City Update / Delete</h3></caption>
          <tr>
             <td><b>State Name</b></td>
             <td><input type="text" name="sid" readonly="true" value="<%out.print(rs.getString(1));%>"/></td>
          </tr>
          <tr>
             <td><b>City ID</b></td>
             <td><input type="text" name="ciid" readonly="true" value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
             <td><b>City Name</b></td>
             <td><input type="text" name="sname"  value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
              <td><b>City Map</b></td>
              <%
                 out.println("<td><img src=adminimg/"+rs.getString(4)+" height=100 width=100></td>");
           %>
           </tr>
           <tr>
              <td><b>City Desc</b></td>
              <td><textarea><%out.print(rs.getString(5)); %></textarea></td>
           </tr>
           <tr>
             <td><input type="submit" class="mainBtn" name="update" value="Update"/></td>
             <td><input type="submit" class="mainBtn" name="delete" value="Delete"/></td>
           </tr>
        </table>
        <%} %>
          
       </table>
    </form>
 </center>
</body>
</html>