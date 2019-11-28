<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%session.getValue("ulid");
String btn = request.getParameter("btn");
%>
</head>
<body>
<%
 course crs = new course();
crs.setCrsid(Integer.parseInt(request.getParameter("courseid")));
crs.setCoursename(request.getParameter("coursename"));
crs.setCourseicon(request.getParameter("courseicon"));
crs.setCoursedesc(request.getParameter("coursedesc"));

String q = "";
if(btn.equals("update"))
{
    if(crs.getCourseicon().equals(""))
    {
	   q = DAO.addNewRecord("update coursereg set coursename='"+crs.getCoursename()+"',coursedesc='"+crs.getCoursedesc()+"' where courseid='"+crs.getCrsid()+"'");
    }
    else
    {
	   q = DAO.addNewRecord("update coursereg set coursename='"+crs.getCoursename()+"',courseicon='"+crs.getCourseicon()+"',coursedesc='"+crs.getCoursedesc()+"' where courseid='"+crs.getCrsid()+"'");
    }

    if(q.equals("yes"))
	   out.print("Updated.......");
    else
	   out.print("Not Updated........");
}
else
{
	q = DAO.addNewRecord("delete from coursereg where courseid='"+crs.getCrsid()+"'");
	
	if(q.equals("yes"))
		out.print("Course Deleted........");
	else
		out.print("Course Not deleted.......");
}
%>
</body>
</html>