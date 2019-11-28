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
</head>
<body>
    <center>
       <form action="collegeUpDel.jsp" method="post">
           <%
              String clglid = request.getParameter("clglid");
           
           ResultSet rs = DAO.showAllRecord("select * from collegereg where clglid='"+clglid+"'");
           
           while(rs.next())
           {
           %>
          <table border="1" cellpadding="10" style="background-color:#caf5ff;">
           <caption><h3>College Update / Delete</h3></caption>
               <tr>
                  <td><b>College ID</td>
                  <td><input type="text" name="clgid" value="<%out.print(rs.getString(1)); %>" readonly/></td>
               </tr>
               <tr>
              <td><b>College Name</td>
              <td><input type="text" name="clgname" value="<%out.print(rs.getString(2)); %>"/></td>
            </tr>
            <tr>
              <td><b>Established In</td>
              <td><input type="date" name="estab" value="<%out.print(rs.getString(3)); %>"/></td>
            </tr>
            <tr>
                  <td><b>College Type</td>
                  <td><input type="text" name="type" value="<%out.print(rs.getString(15)); %>"/></td>
            </tr>
            <tr>
              <td><b>Email ID</td>
              <td><input type="email" name="emailid" value="<%out.print(rs.getString(4)); %>"/></td>
            </tr>
            <tr>
              <td><b>Website</td>
              <td><input type="text" name="web" value="<%out.print(rs.getString(5)); %>"/></td>
            </tr>
            <tr>
             <td><b>Mobile No</td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(6)); %>"/></td>
          </tr>
          <tr>
             <td><b>Address</td>
             <td><textarea name="add"><%out.print(rs.getString(7)); %></textarea></td>
          </tr>
          <tr>
             <td><b>State</td>
             <td><input type="text" name="sid" value="<%out.print(rs.getString(8)); %>"/></td>
          </tr>
          <tr>
             <td><b>City</td>
             <td><input type="text" name="ciid" value="<%out.print(rs.getString(9)); %>"/></td>
          </tr>
          <tr>
            <td><b>Photo Upload</td>
            <td><img src="adminimg/<%out.print(rs.getString(10)); %>" height="100" width="100"/><input type="file" name="photo"/></td>
          </tr>
          <tr>
            <td><input type="submit" name="button" class="mainBtn" value="Update"/></td>
            <td><input type="reset" name="button" class="mainBtn" value="Delete"/></td>
          </tr>
               
           </table>
           <%
           }
           %>
       </form>
    </center>
</body>
</html>