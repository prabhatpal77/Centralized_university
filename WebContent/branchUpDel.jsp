<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.branch"%>
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
  branch br = new branch();
  
br.setCourseid(Integer.parseInt(request.getParameter("courseid")));
br.setBid(Integer.parseInt(request.getParameter("branchid")));
br.setBranchname(request.getParameter("branchname"));
br.setBranchicon(request.getParameter("branchicon"));
br.setBranchdesc(request.getParameter("branchdesc"));

String q = "";

if(btn.equals("update"))
{
	if(br.getBranchicon().equals(""))
	{
		q = DAO.addNewRecord("update branchreg set courseid="+br.getCourseid()+",branchname='"+br.getBranchname()+"',branchdesc='"+br.getBranchdesc()+"' where branchid="+br.getBid()+"");
	}
	else
	{
		q = DAO.addNewRecord("update branchreg set courseid="+br.getCourseid()+",branchname='"+br.getBranchname()+"',branchicon='"+br.getBranchicon()+"',branchdesc='"+br.getBranchdesc()+"' where branchid="+br.getBid()+"");
		
	}
	
	if(q.equals("yes"))
		out.print("Updated.......");
	else
		out.print("Not Updated........");
}
else
{
	q = DAO.addNewRecord("delete from branchreg where branchid='"+br.getBid()+"'");
    
	if(q.equals("yes"))
		out.print("Deleted.......");
	else
		out.print("Not Deleted........");
}
%>

</body>
</html>