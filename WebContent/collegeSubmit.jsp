<%@page import="java.util.Random"%>
<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.College"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%

%>
</head>
<body>
<%
try
{
String unilid = session.getValue("unilid").toString();

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
  clg.setEmailid(request.getParameter("emailid"));
  clg.setUnilid(request.getParameter("unilid"));
  clg.setType(request.getParameter("type"));
  
  String status = "active";
  int min=100,max=999;
  Random ran = new Random();
  int total = (ran.nextInt() + min) + max;
  String pwd = Integer.toString(total);
  
  String q = DAO.addNewRecord("insert into collegereg(clgname,estab,emailid,web,address,mno,sid,ciid,photo,clglid,pwd,status,unilid,type) values('"+clg.getClgname()+"','"+clg.getEstab()+"','"+clg.getEmailid()+"','"+clg.getWeb()+"','"+clg.getAdd()+"','"+clg.getMno()+"','"+clg.getSid()+"','"+clg.getCiid()+"','"+clg.getPhoto()+"','"+clg.getClglid()+"','"+pwd+"','"+status+"','"+unilid+"','"+clg.getType()+"')");
  
  if(q.equals("yes"))
	  out.print("Submitted.........");
  else
	  out.print("Not Submitted..........");
 
}
catch(Exception ex)
{
	out.print("Error  :   "+ex);
}
%>
</body>
</html>