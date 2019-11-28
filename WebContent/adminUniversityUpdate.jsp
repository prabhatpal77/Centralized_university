<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%session.getValue("alid"); %>
</head>
<body>
<center>
   <form action="adminUniversityUpDel.jsp" method="post">
      <table>
      <%
      String unilid = request.getParameter("unilid");
      
      ResultSet rs = DAO.showAllRecord("select * from universityreg where ulid='"+unilid+"'");
      
      while(rs.next())
      {
      %>
      <tr>
          <td>University Id</td>
          <td><input type="text" name="uniid" value="<%out.print(rs.getString(1)); %>"/></td>
      </tr>
      <tr>
             <td>University Name</td>
             <td><input type="text" name="name" value="<%out.print(rs.getString(2)); %>"/></td>
          </tr>
          <tr>
             <td>Established In</td>
             <td><input type="date" name="estab" value="<%out.print(rs.getString(3)); %>"/></td>
          </tr>
          <tr>
             <td>Recognized</td>
             <td><input type="text" name="recog" value="<%out.print(rs.getString(4)); %>"/></td>
          </tr>
          <tr>
             <td>University Type</td>
             <td><input type="text" name="type" value="<%out.print(rs.getString(5)); %>"/></td>
          </tr>
          <tr>
             <td>Email ID</td>
             <td><input type="email" name="email" value="<%out.print(rs.getString(6)); %>"/></td>
          </tr>
          <tr>
             <td>Website</td>
             <td><input type="text" name="web" value="<%out.print(rs.getString(7)); %>"/></td>
          </tr>
          <tr>
             <td>Mobile No</td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(8)); %>"/></td>
          </tr>
          <tr>
             <td>Address</td>
             <td><textarea name="add"><%out.print(rs.getString(9)); %></textarea></td>
          </tr>
          
          <tr>
             <td>City</td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(10)); %>"/></td>
          </tr>
          <tr>
             <td>State</td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(11)); %>"/></td>
          </tr>
          <tr>
            <td>Photo Upload</td>
            <td><img src="adminimg/<%out.print(rs.getString(14));%>" height="100" width="100"/><input type="file" name="photo"/></td>
          </tr>
          <tr>
            <td><input type="submit" name="button" value="update"/></td>
            <td><input type="reset" name="button" value="delete"/></td>
          </tr>
          <%
      }
          %>
      </table>
   </form>
</center>
</body>
</html>