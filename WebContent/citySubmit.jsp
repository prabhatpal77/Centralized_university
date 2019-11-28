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
        city c = new city();
        
        c.setSid(Integer.parseInt(request.getParameter("sid")));
        c.setCiiname(request.getParameter("ciiname"));
        c.setCiimap(request.getParameter("ciimap"));
        c.setCiidesc(request.getParameter("ciidesc"));
        
        String q = DAO.addNewRecord("insert into city(sid,ciiname,ciimap,ciidesc) values('"+c.getSid()+"','"+c.getCiiname()+"','"+c.getCiimap()+"','"+c.getCiidesc()+"')");
        
        if(q.equals("yes"))
        	response.sendRedirect("cityInterface.jsp");
        else
        	out.print("City not submitted........");
        %>
     </form>
  </center>
</body>
</html>