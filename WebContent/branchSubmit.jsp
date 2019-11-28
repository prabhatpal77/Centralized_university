<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.branch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%session.getValue("ulid"); %>
</head>
<body>
  <%
     branch br = new branch();
  
  br.setCourseid(Integer.parseInt(request.getParameter("courseid")));
  br.setBranchname(request.getParameter("branchname"));
  br.setBranchicon(request.getParameter("branchicon"));
  br.setBranchdesc(request.getParameter("branchdesc"));
  
  String q = DAO.addNewRecord("insert into branchreg(courseid,branchname,branchicon,branchdesc) values("+br.getCourseid()+",'"+br.getBranchname()+"','"+br.getBranchicon()+"','"+br.getBranchdesc()+"')");
  
  if(q.equals("yes"))
	  out.print("Record Submitted........");
  else
	  out.print("Record Not Submitted........");
  %>
</body>
</html>