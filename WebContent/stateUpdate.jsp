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

  String alid = session.getValue("alid").toString();
String cltime = session.getValue("cltime").toString();

 String sid = request.getParameter("sid");
%>
</head>
<body>
 <center>
    <form action="stateUpdateDelete.jsp">
    <caption><h3>State Update/Delete</h3></caption>
       <%
       ResultSet rs = DAO.showAllRecord("select * from state where sid='"+sid+"'");
       while(rs.next())
       {       
       %>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
          <tr>
             <td><b>Country ID</b></td>
             <td><%out.print(rs.getString(1));%>
             <select name=cid>
             <option value="-select country-">-Select Country-</option>
             <%
             ResultSet rs1 = DAO.showAllRecord("select * from country");
             while(rs1.next())
             {
            	 out.print("<option value="+rs1.getString(1)+">"+rs1.getString(2)+"</option>");
             }
             %>
             </select>
             </td>
          </tr>
          <tr>
             <td><b>State ID</b></td>
             <td><input type="text" name="sid" readonly="true" value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
             <td><b>State Name</b></td>
             <td><input type="text" name="sname"  value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
              <td><b>State Map</b></td>
              <%
                 out.println("<td><img src=adminimg/"+rs.getString(4)+" height=100 width=100/><input type=file name=smap /></td>");
           %>
           </tr>
           <tr>
              <td><b>State Desc</b></td>
              <td><textarea name="sdesc"><%out.print(rs.getString(5)); %></textarea></td>
           </tr>
           <tr>
             <td><input type="submit" class="mainBtn" name="btn" value="update"/></td>
             <td><input type="submit" class="mainBtn" name="btn" value="delete"/></td>
           </tr>
        </table>
        <%} %>
          
       </table>
    </form>
 </center>
</body>

</html>