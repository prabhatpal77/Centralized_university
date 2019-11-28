<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.state"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<% 
try
{
String alid = session.getValue("alid").toString();
String cltime = session.getValue("cltime").toString();
String btn = request.getParameter("btn");
%>
</head>
<body>
    <center>
      <form>
         <%
         
         String q = "";
            state s = new state();
         String cid = request.getParameter("cid");// don't work
         s.setSid(Integer.parseInt(request.getParameter("sid")));
         s.setSname(request.getParameter("sname"));
         s.setSmap(request.getParameter("smap"));
         s.setSdesc(request.getParameter("sdesc"));
         
         if(btn.equals("update"))
         {
        	 if(s.getSmap().equals(""))
        	      q = DAO.addNewRecord("update state set sname='"+s.getSname()+"',sdesc='"+s.getSdesc()+"' where sid="+s.getSid()+"");
        	 else
        		 q = DAO.addNewRecord("update state set sname='"+s.getSname()+"',smap='"+s.getSmap()+"',sdesc='"+s.getSdesc()+"' where sid="+s.getSid()+"");
         
        	 //out.print(q);
        	 //response.sendRedirect("state.jsp");
        	 if(q.equals("yes"))
          	   out.print("Updated...........");
             else
          	   out.print("Not Updated...........");
         }
         else
         {
        	 q = DAO.addNewRecord("delete from state where sid="+s.getSid()+"");    	 
        	 response.sendRedirect("stateInterface.jsp");
         }
}
catch(Exception ex)
{
out.println("Error: "+ex);	
}
%>
      </form>
    </center>
</body>

</html>