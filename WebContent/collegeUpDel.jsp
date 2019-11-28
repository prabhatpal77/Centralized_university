<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.College"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<% String btn = request.getParameter("button"); %>
</head>
<body>
   <%
   String q = "";
   College clg = new College();

   clg.setClgname(request.getParameter("clgname"));
   clg.setEstab(request.getParameter("estab"));
   clg.setWeb(request.getParameter("web"));
   clg.setMno(request.getParameter("mno"));
   clg.setAdd(request.getParameter("add"));
   clg.setSid(request.getParameter("sid"));
   clg.setCiid(request.getParameter("ciid"));
   clg.setPhoto(request.getParameter("photo"));
   clg.setClglid(request.getParameter("emailid"));
   clg.setType(request.getParameter("type"));
  
   if(btn.equals("update"))
   {
	   if(clg.getPhoto().equals(""))
	   {
            q = DAO.addNewRecord("update collegereg set clgname='"+clg.getClgname()+"',estab='"+clg.getEstab()+"',web='"+clg.getWeb()+"',address='"+clg.getAdd()+"',mno='"+clg.getMno()+"',sid='"+clg.getSid()+"',ciid='"+clg.getCiid()+"',type='"+clg.getType()+"' where clglid='"+clg.getClglid()+"'");
	   }
	   else
	   {
		   q = DAO.addNewRecord("update collegereg set clgname='"+clg.getClgname()+"',estab='"+clg.getEstab()+"',web='"+clg.getWeb()+"',address='"+clg.getAdd()+"',mno='"+clg.getMno()+"',sid='"+clg.getSid()+"',ciid='"+clg.getCiid()+"',photo='"+clg.getPhoto()+"',type='"+clg.getType()+"' where clglid='"+clg.getClglid()+"'");
	   }
	   
   if(q.equals("yes"))
 	  out.print("updated.........");
   else
 	  out.print("Not Updated..........");
  
   }
   else
   {
	   q = DAO.addNewRecord("update collegereg set status='Not Active' where clglid='"+clg.getClglid()+"'");
   
	   if(q.equals("yes"))
		 	  out.print("Deleted.........");
		   else
		 	  out.print("Not Deleted..........");
		  
	   
   }
   %>
</body>
</html>