<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.country"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%

  String alid = session.getValue("alid").toString();
String cltime = session.getValue("cltime").toString();
 
%>
</head>
<body>
   <center>
      <form>
          <%
          
          String q = "";
          country c = new country();
          c.setCid(Integer.parseInt(request.getParameter("cid")));
          c.setCname(request.getParameter("cname"));
          c.setCmap(request.getParameter("cflag"));
          c.setCdesc(request.getParameter("cdesc"));

		String btn = request.getParameter("btn");
 		//	out.print(btn);
          if(btn.equals("Update"))
          {
        	  if(c.getCmap().equals(""))
        		  q = DAO.addNewRecord("update country set cname='"+c.getCname()+"',cdesc='"+c.getCdesc()+"' where cid="+c.getCid()+"");
        	  else
        		  q = DAO.addNewRecord("update country set cname='"+c.getCname()+"',cflag='"+c.getCmap()+"',cdesc='"+c.getCdesc()+"' where cid="+c.getCid()+"");
        	    
           //out.print(q);
           if(q.equals("yes"))
        	   out.print("Updated...........");
           else
        	   out.print("Not Updated...........");
          }    
          //response.sendRedirect("country.jsp");
          
          else if(btn.equals("Delete"))
          {
        	  q = DAO.addNewRecord("delete from country where cid="+c.getCid()+"");
          
        	  if(q.equals("yes"))
           	   out.print("Deleted...........");
              else
           	   out.print("Not Deleted...........");
               
           //   response.sendRedirect("country.jsp");
          }
          %>
      </form>
   </center>
</body>

</html>