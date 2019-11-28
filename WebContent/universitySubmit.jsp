<%@page import="bs.dao.DAO"%>
<%@page import="java.util.Random"%>
<%@page import="bs.model.University"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <center>
     <form>
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
          uni.setUlid(request.getParameter("email"));
          uni.setPhoto(request.getParameter("photo"));
          String status = "active";
          Random ran = new Random();
          
          int min=100,max=999,pwd;
          pwd = (ran.nextInt() + min) + max;
          
          String q = DAO.addNewRecord("insert into universityreg(uname,estab,recog,type,email,web,mno,aadd,ciid,sid,ulid,upwd,photo,status) values('"+uni.getName()+"','"+uni.getEstab()+"','"+uni.getRecog()+"','"+uni.getType()+"','"+uni.getEmail()+"','"+uni.getWeb()+"','"+uni.getMno()+"','"+uni.getAdd()+"','"+uni.getCiid()+"','"+uni.getSid()+"','"+uni.getUlid()+"',"+pwd+",'"+uni.getPhoto()+"','"+status+"')");
          
          if(q.equals("yes"))
        	  out.print("Record Submitted.......");
          else
        	  out.print("Record Not Submitted..........");
          
          
        %>
     </form>
  </center>
</body>
</html>