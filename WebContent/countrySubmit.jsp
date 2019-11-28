<%@page import="java.sql.ResultSet"%>
<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.country"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
try{
  String alid = session.getValue("alid").toString();
String cltime = session.getValue("cltime").toString();

%>
</head>
<body>
<center>
   <form>
      <%
          
        	country c = new country();
        	c.setCname(request.getParameter("cname"));
        	c.setCmap(request.getParameter("cflag"));
        	c.setCdesc(request.getParameter("cdesc"));
        	  
        	  String q = DAO.addNewRecord("insert into country(cname,cflag,cdesc) values('"+c.getCname()+"','"+c.getCmap()+"','"+c.getCdesc()+"')");
        	  
        	  response.sendRedirect("country.jsp");
        	  
        	  out.print(q);
        	  
        	  if(q.equals("yes")) 
        		  out.print("Record Submitted.......");
        	  else
        		  out.print("Record Not Submitted......"+q);
        
        %>
   </form>
</center>
</body>
<% 
}
catch(Exception ex)
{
	response.sendRedirect("adminLogin.jsp");
}
%>
</html>