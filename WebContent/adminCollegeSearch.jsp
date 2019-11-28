<%@page import="bs.model.College"%>
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
<%session.getValue("alid"); %>
</head>
<body>
<center>
    <form>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
       <caption><h3>Search College</h3></caption>
          <tr>
             <td><select name="uid">
               <option value="-select uni-">-Select University-</option>
               <%
                 ResultSet rs = DAO.showAllRecord("select * from universityreg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(6)+">"+rs.getString(2)+"</option>");
               }
               %>
             </select></td></tr>
             <tr><td><select name="ciid">
               <option value="-select city-">-Select City-</option>
               <%
                 rs = DAO.showAllRecord("select * from city");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
               }
               %>
             </select></td></tr>
             
             <tr><td><input type="text" name="clgname" placeholder="College Name"/></td>
          </tr>
          <tr>
             <td><input type="submit" class="mainBtn" name="search" Value="Search"/></td>
          </tr>
      </table>
    </form>
    <% 
     if(request.getParameter("search") != null)
     {
    	 College clg = new College();
    	 
    	 clg.setUnilid(request.getParameter("uid"));
    	 clg.setCiid(request.getParameter("ciid"));
    	 clg.setClgname(request.getParameter("clgname"));
    	 %>
    	 
    	 <table>
    	 <tr><th><h3>Display College</h3></th></tr>
    	    <%
    	    rs = DAO.showAllRecord("select * from city,universityreg where city.ciid='"+clg.getCiid()+"' and universityreg.email='"+clg.getUnilid()+"'");
    	    
    	    while(rs.next())
    	    {
    	    %>
    	    <tr>
    	       <td><%out.print(rs.getString(7)); %></td>
    	       <td><%out.print(rs.getString(3)); %></td>
    	    </tr>
    	    <%
    	    }
    	    %>
    	 </table>
    	 
    	  <table border="1" cellpadding="10" style="background-color:#caf5ff;">
    	    <tr>
    	       <th>College ID</th>
    	       <th>College Name</th>
    	       <th>Email ID</th>
    	       <th>Website</th>
    	       <th>Mobile No</th>
    	       <th>Address</th>
    	       <th></th>
    	    </tr>
    	    <%
    	    
    	    if(!clg.getUnilid().equals("-select uni-") && !clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
    	       rs = DAO.showAllRecord("select * from collegereg where unilid='"+clg.getUnilid()+"' and ciid='"+clg.getCiid()+"' and clgname='"+clg.getClgname()+"' and status='active'");
    	    
    	    else if(!clg.getUnilid().equals("-select uni-") && !clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where unilid='"+clg.getUnilid()+"' and ciid='"+clg.getCiid()+"' and status='active'");
     	    
    	    else if(!clg.getUnilid().equals("-select uni-") && clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where unilid='"+clg.getUnilid()+"' and clgname='"+clg.getClgname()+"' and status='active'");
     	    
    	    else if(!clg.getUnilid().equals("-select uni-") && clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where unilid='"+clg.getUnilid()+"' and status='active'");
     	    
    	    else if(clg.getUnilid().equals("-select uni-") && !clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where ciid='"+clg.getCiid()+"' and clgname='"+clg.getClgname()+"' and status='active'");
     	    
    	    else if(clg.getUnilid().equals("-select uni-") && !clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where ciid='"+clg.getCiid()+"' and status='active'");
     	    
    	    else if(clg.getUnilid().equals("-select uni-") && clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where clgname='"+clg.getClgname()+"' and status='active'");
     	    
    	    else if(clg.getUnilid().equals("-select uni-") && clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	       rs = DAO.showAllRecord("select * from collegereg where status='active'");
     	    
    	    else 
    	    	rs = DAO.showAllRecord("select * from collegereg where status='active'");
     	    
    	    while(rs.next())
    	    {
    	    %>
    	    <tr>
    	       <td><%out.print(rs.getString(1)); %></td>
    	       <td><%out.print(rs.getString(2)); %></td>
    	       <td><%out.print(rs.getString(4)); %></td>
    	       <td><%out.print(rs.getString(5)); %></td>
    	       <td><%out.print(rs.getString(6)); %></td>
    	       <td><%out.print(rs.getString(7)); %></td>
    	       <%
    	       out.print("<td><a href=adminCollegeDetail.jsp?clgid="+rs.getString(1)+" class=\"mainBtns\">Detail</a></td>");
    	       %>
    	    </tr>
    	    <%
    	    }
    	    %>
    	 </table>
    	 <% 
     }
    %>
</center>
</body>
</html>