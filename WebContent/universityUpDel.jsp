<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.University"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<% String ulid = session.getValue("unilid").toString();
   String btn = request.getParameter("btn");
%>
</head>
<body>
  <%
    University uni = new University();
  
  uni.setName(request.getParameter("name"));
  uni.setEstab(request.getParameter("estab"));
  uni.setRecog(request.getParameter("recog"));
  uni.setType(request.getParameter("type"));
  uni.setEmail(request.getParameter("email"));
  uni.setWeb(request.getParameter("web"));
  uni.setMno(request.getParameter("mno"));
  uni.setAdd(request.getParameter("add"));
  uni.setCiid(request.getParameter("ciid"));
  uni.setSid(request.getParameter("sid"));
  uni.setPhoto(request.getParameter("photo"));
  
  String q = "";
  
  if(btn.equals("update"))
  {
	  if(uni.getPhoto().equals(""))
	  {
           q = DAO.addNewRecord("update universityreg set uname='"+uni.getName()+"',estab='"+uni.getEstab()+"',recog='"+uni.getRecog()+"',type='"+uni.getType()+"',email='"+uni.getEmail()+"',web='"+uni.getWeb()+"',mno='"+uni.getMno()+"',aadd='"+uni.getAdd()+"',ciid='"+uni.getCiid()+"',sid='"+uni.getSid()+"' where ulid='"+uni.getUlid()+"'");
	  }
	  else 
	  {
		  q = DAO.addNewRecord("update universityreg set uname='"+uni.getName()+"',estab='"+uni.getEstab()+"',recog='"+uni.getRecog()+"',type='"+uni.getType()+"',email='"+uni.getEmail()+"',web='"+uni.getWeb()+"',mno='"+uni.getMno()+"',aadd='"+uni.getAdd()+"',ciid='"+uni.getCiid()+"',sid='"+uni.getSid()+"',photo='"+uni.getPhoto()+"' where ulid='"+uni.getUlid()+"'");
      }
	  
      if(q.equals("yes"))
	     out.print("Updated.......");
      else
	     out.print("Record Not Updated..........");
  }
  else
  {
	   q = DAO.addNewRecord("update universityreg set status='Not Active'");
	  
	  if(q.equals("yes"))
		  out.print("Deleted.......");
	  else
		  out.print("Not Deleted......");
  }
  %>
</body>
</html>