<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<%
String ulid = session.getValue("unilid").toString();
%>
</head>
<body>
  <%
     course crs = new course();
  
  crs.setUlid(request.getParameter("ulid"));
  crs.setCoursename(request.getParameter("coursename"));
  crs.setCourseicon(request.getParameter("courseicon"));
  crs.setCoursedesc(request.getParameter("coursedesc"));
  crs.setClg(request.getParameter("clgid"));
  
  String q = DAO.addNewRecord("insert into coursereg(coursename,courseicon,coursedesc,uid,clgid) values('"+crs.getCoursename()+"','"+crs.getCourseicon()+"','"+crs.getCoursedesc()+"','"+crs.getUlid()+"','"+crs.getClg()+"')");
  
  if(q.equals("yes"))
	  out.print("Record Submitted.........");
  else
	  out.print("Reocrd Not Submitted........");
  
  %>
</body>
</html>