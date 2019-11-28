<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.University"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%session.getValue("alid"); %>
</head>
<body>
   <%
   String btn = request.getParameter("button");
   
   University uni = new University();
   
   uni.setUid(Integer.parseInt(request.getParameter("uniid")));
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
   uni.setUlid(request.getParameter("email"));
   uni.setPhoto(request.getParameter("photo"));
  
  
   
   String q = DAO.addNewRecord("update universityreg set uname='"+uni.getName()+"',estab='"+uni.getEstab()+"',recog='"+uni.getRecog()+"',type='"+uni.getType()+"',web='"+uni.getWeb()+"',mno='"+uni.getMno()+"',aadd='"+uni.getAdd()+"',ciid='"+uni.getCiid()+"',sid='"+uni.getSid()+"',photo='"+uni.getPhoto()+"' where email='"+uni.getEmail()+"'");
   
   if(q.equals("yes"))
 	  out.print("Record updated.......");
   else
 	  out.print("Record Not updated..........");
   
   
 %>
   %>
</body>
</html>