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
try{
	  String alid = session.getValue("alid").toString();
	String cltime = session.getValue("cltime").toString();


   
   }
   catch(Exception ex)
   {
   	response.sendRedirect("adminLogin.jsp");
   }
   
%>
</head>
<body>
  <center>
     <form action="countryUpdateDelete.jsp">
        <%
        String cid = request.getParameter("cid");
        
           ResultSet rs = DAO.showAllRecord("select * from country where cid='"+cid+"'");
        while(rs.next())
        {
        %>
        <caption><h3>Country Update/Delete</h3></caption>
        <table border="1" cellpadding="10" style="background-color:#caf5ff;">
           <tr>
              <td><b>Country ID</b></td>
              <td><input type="text" name="cid" value="<%out.print(rs.getString(1));%>"></td>
           </tr>
           <tr>
              <td><b>Country Name</b></td>
              <td><input type="text" name="cname" value="<%out.print(rs.getString(2));%>"></td>
           </tr>
           <tr>
              <td><b>Country Flag</b></td>
              <%
                 out.print("<td><input type=file name=cflag><br><img src=adminimg/"+rs.getString(3)+" height=70 width=70/></td>");
           	%>
           </tr>
           <tr>
              <td><b>Country Desc</b></td>
              <td><textarea name="cdesc"><%out.print(rs.getString(4)); %></textarea></td>
           </tr>
           <tr>
             <td><input type="submit" class="mainBtn" name="btn" value="Update"/></td>
             <td><input type="submit" class="mainBtn" name="btn" value="Delete"/></td>
           </tr>
        </table>
        <%} %>
     </form>
     
  </center>
</body>

</html>