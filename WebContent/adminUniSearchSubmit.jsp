<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bs.model.University"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">
<% session.getValue("alid"); %>
</head>
<body>
<center>
   <form>
      <%
        University uni = new University();
      
      uni.setType(request.getParameter("type"));
      uni.setSid(request.getParameter("sid"));
      uni.setCiid(request.getParameter("ciid"));
      
      %>
     <table>
      <tr><td><h3>Display University</h3></td></tr>
      <%
      
         ResultSet rs = DAO.showAllRecord("select * from universityreg,state,city where universityreg.type='"+uni.getType()+"' and state.sid='"+uni.getSid()+"' and city.ciid='"+uni.getCiid()+"'");
      
      while(rs.next())
      {
      %>
        <tr>
          <td><%out.print(rs.getString(5));%></td>
          <td><%out.print(rs.getString(18)); %></td>
          <td><%out.print(rs.getString(23)); %></td>
        </tr>
        <%
      }
      rs.close();
        %>
      </table>
      
      <table border="1" cellpadding="10" style="background-color:#caf5ff;">
         <tr>
            <th>University ID</th>
            <th>University Name</th>
            <th>Email ID</th>
            <th>WebSite</th>
            <th>Mobile No</th>
            <th>Address</th>
            <th>Photo</th>
            <th></th>
         </tr>
         <%
            //ResultSet rs;
         
         if(!uni.getType().equals("-select type-") && !uni.getSid().equals("-select state-") && !uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where type='"+uni.getType()+"' and sid='"+uni.getSid()+"' and ciid='"+uni.getCiid()+"' and status='active'");
        
         else if(!uni.getType().equals("-select type-") && !uni.getSid().equals("-select state-") && uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where type='"+uni.getType()+"' and sid='"+uni.getSid()+"' and status='active'");
        
         else if(!uni.getType().equals("-select type-") && uni.getSid().equals("-select state-") && !uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where type='"+uni.getType()+"' and ciid='"+uni.getCiid()+"' and status='active'");
        
         else if(!uni.getType().equals("-select type-") && uni.getSid().equals("-select state-") && uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where type='"+uni.getType()+"' and status='active'");
        
         else if(uni.getType().equals("-select type-") && !uni.getSid().equals("-select state-") && !uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where sid='"+uni.getSid()+"' and ciid='"+uni.getCiid()+"' and status='active'");
        
         else if(uni.getType().equals("-select type-") && !uni.getSid().equals("-select state-") && uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where sid='"+uni.getSid()+"' and status='active'");
        
         else if(uni.getType().equals("-select type-") && uni.getSid().equals("-select state-") && !uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where ciid='"+uni.getCiid()+"' and status='active'");
        
         else if(uni.getType().equals("-select type-") && uni.getSid().equals("-select state-") && uni.getCiid().equals("-select city-"))
        	 rs = DAO.showAllRecord("select * from universityreg where status='active'");
        
         else
        	 rs = DAO.showAllRecord("select * from universityreg where status='active'");
        
         while(rs.next())
         {
         %>
         <tr>
            <td><%out.print(rs.getString(1)); %></td>
            <td><%out.print(rs.getString(2)); %></td>
            <td><%out.print(rs.getString(6)); %></td>
            <td><%out.print(rs.getString(7)); %></td>
            <td><%out.print(rs.getString(8)); %></td>
            <td><%out.print(rs.getString(9)); %></td>
            <%
            out.print("<td><img src=adminimg/"+rs.getString(14)+" height=100 width=100/></td>");
            out.print("<td><a href=adminUniversityUpdate.jsp?unilid="+rs.getString(12)+" class=\"mainBtns\">Detail/Update</a></td>");
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