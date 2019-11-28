<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.state"%>
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
          state s = new state();
        s.setCid(Integer.parseInt(request.getParameter("cid")));
        s.setSname(request.getParameter("sname"));
        s.setSmap(request.getParameter("smap"));
        s.setSdesc(request.getParameter("sdesc"));
        
        String q = DAO.addNewRecord("insert into state(cid,sname,smap,sdesc) values('"+s.getCid()+"','"+s.getSname()+"','"+s.getSmap()+"','"+s.getSdesc()+"')");
        
        if(q.equals("yes"))
        	response.sendRedirect("stateInterface.jsp");
        else
        	out.print("State not submitted........");
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