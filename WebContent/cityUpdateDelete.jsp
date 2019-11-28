<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.city"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
      <form>
         <%
         String q = "";
            city cii = new city();
         cii.setSid(Integer.parseInt(request.getParameter("sid")));
         cii.setCiid(Integer.parseInt(request.getParameter("ciid")));
         cii.setCiiname(request.getParameter("ciiname"));
         cii.setCiimap(request.getParameter("ciimap"));
         cii.setCiidesc(request.getParameter("ciidesc"));
         
         if(request.getParameter("update") != null)
         {
        	 if(cii.getCiimap().equals(""))
        	      q = DAO.addNewRecord("update city set ciiname='"+cii.getCiiname()+"',Ciidesc='"+cii.getCiidesc()+"' where ciid='"+cii.getCiid()+"'");
        	 else
        		 q = DAO.addNewRecord("update city set ciiname='"+cii.getCiiname()+"',ciimap='"+cii.getCiimap()+"',ciidesc='"+cii.getCiidesc()+"' where ciid='"+cii.getCiid()+"'");
         
        	 response.sendRedirect("cityInterface.jsp");
         }
         
         if(request.getParameter("delete") != null)
         {
        	 q = DAO.addNewRecord("delete from city where ciid='"+cii.getCiid()+"'");
        	 
        	 response.sendRedirect("city.jsp");
         }
         %>
      </form>
    </center>
</body>
</html>