<%@page import="java.sql.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bs.model.LoginData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%
 LoginData lg = new LoginData();

lg.setCategory(request.getParameter("category"));
lg.setLid(request.getParameter("lid"));
lg.setPwd(request.getParameter("pwd"));

if(lg.getCategory().equals("admin"))
{

	 if((!lg.getLid().equals(null) || !lg.getLid().equals("")) && (!lg.getPwd().equals(null) || !lg.getPwd().equals("")))
	 {
		 if(lg.getLid().equals("admin") && lg.getPwd().equals("admin"))
		 {
		      session.putValue("alid",lg.getLid());
             session.putValue("apwd",lg.getPwd());
             session.putValue("cltime", new java.util.Date());
             
             response.sendRedirect("adminHomePage.jsp");
		 }
		 else
			 out.print("Enter Valid Login Id and Password");

	 }
}
else if(lg.getCategory().equals("university"))
{
	String unilid = "";
	String unipwd = "";
	
	ResultSet rs = DAO.showAllRecord("select * from universityreg where ulid='"+lg.getLid()+"' and upwd='"+lg.getPwd()+"' and status='active'");
    
	while(rs.next())
	{
		unilid = rs.getString("ulid");
		unipwd = rs.getString("upwd");
		
		if((!lg.getLid().equals(null) || !lg.getLid().equals("")) && (!lg.getPwd().equals(null) || !lg.getPwd().equals("")))
		{
			if(lg.getLid().equals(unilid) && lg.getPwd().equals(unipwd))
			{
				session.putValue("unilid", lg.getLid());
				session.putValue("unipwd", lg.getPwd());
				
				session.putValue("unitime",new java.util.Date());
				response.sendRedirect("universityHomePage.jsp");
			}
			else
			{
				out.print("plz enter valid username and password........");
			}
		}
		else
		{
			out.print("plz enter valid values......");
		}
	}
}
else if(lg.getCategory().equals("college"))
{
	String clglid = "";
	String clgpwd = "";
	
	ResultSet rs = DAO.showAllRecord("select * from collegereg where clglid='"+lg.getLid()+"' and pwd='"+lg.getPwd()+"' and status='active'");
    
	while(rs.next())
	{
		clglid = rs.getString("clglid");
		clgpwd = rs.getString("pwd");
		
		if((!lg.getLid().equals(null) || !lg.getLid().equals("")) && (!lg.getPwd().equals(null) || !lg.getPwd().equals("")))
		{
			if(lg.getLid().equals(clglid) && lg.getPwd().equals(clgpwd))
			{
				session.putValue("clglid", lg.getLid());
				session.putValue("clgpwd", lg.getPwd());
				
				session.putValue("clgtime",new java.util.Date());
				response.sendRedirect("collegeHomePage.jsp");
			}
			else
			{
				out.print("plz enter valid username and password........");
			}
		}
		else
		{
			out.print("plz enter valid values......");
		}
	}
}
else if(lg.getCategory().equals("student"))
{
	String stulid = "";
	String stupwd = "";
	
	ResultSet rs = DAO.showAllRecord("select * from studentreg where stulid='"+lg.getLid()+"' and stupwd='"+lg.getPwd()+"' and status='active'");
    
	while(rs.next())
	{
		stulid = rs.getString("stulid");
		stupwd = rs.getString("stupwd");
		
		if((!lg.getLid().equals(null) || !lg.getLid().equals("")) && (!lg.getPwd().equals(null) || !lg.getPwd().equals("")))
		{
			if(lg.getLid().equals(stulid) && lg.getPwd().equals(stupwd))
			{
				session.putValue("stulid", lg.getLid());
				session.putValue("stupwd", lg.getPwd());
				
				session.putValue("stutime",new java.util.Date());
				response.sendRedirect("studentHomePage.jsp");
			}
			else
			{
				out.print("plz enter valid username and password........");
			}
		}
		else
		{
			out.print("plz enter valid values......");
		}
	}
}
%>
</body>
</html>