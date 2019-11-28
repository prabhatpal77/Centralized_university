
<%@page import="java.util.Date"%>
<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.Notice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<center>
   <form>
      <%
         Notice nt = new Notice();
      
      nt.setPublishby(request.getParameter("publish"));
      nt.setSubject(request.getParameter("subject"));
      nt.setDetail(request.getParameter("detail"));
      nt.setFile(request.getParameter("file"));
      nt.setImage(request.getParameter("image"));
      Date datetime = new Date();
      
      
    	  String q = DAO.addNewRecord("insert into notice(publishby,subject,detail,file,image,datetime) values('"+nt.getPublishby()+"','"+nt.getSubject()+"','"+nt.getDetail()+"','"+nt.getFile()+"','"+nt.getImage()+"','"+datetime+"')");
      
    	  if(q.equals("yes"))
    		  out.print("Submitted..........");
    	  else
    		  out.print("Not Submitted.......");
      
      %>
   </form>
</center>
</body>
</html>