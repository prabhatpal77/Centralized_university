<%@page import="bs.model.Notice"%>
<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">
</head>
<body>
<center> 
  <form>
      <%
         String noid = request.getParameter("noid");
      
      ResultSet rs = DAO.showAllRecord("select * from notice where noid='"+noid+"'");
      
      while(rs.next())
      {
      %>
      <table border="1" cellpadding="10" style="background-color:#caf5ff;">
      <caption><h3>Update / Delete</h3></caption>
      <tr>
         <td><b>Notice ID</td>
         <td><input type="text" name="noid" value="<%out.print(rs.getString(1)); %>"/></td>
      </tr>
            <tr>
              <td><b>Subject</td>
              <td><input type="text" name="subject" value="<%out.print(rs.getString(3)); %>"/></td>
           </tr>
           <tr>
              <td><b>Detail</td>
              <td><textarea name="detail"><%out.print(rs.getString(4)); %>"</textarea></td>
           </tr>
           <tr>
              <td><b>File Upload</td>
              <td><img src="adminimg/<%out.print(rs.getString(5)); %>" height="100" width="100"/><input type="file" name="file"/></td>
           </tr>
           <tr>
              <td><b>Image Upload</td>
              <td><img src="adminimg/<%out.print(rs.getString(6)); %>" height="100" width="100"/><input type="file" name="image"/></td>
           </tr>
           <tr>
              <td><input type="submit" class="mainBtn" name="update" value="Update"/></td>
              <td><input type="reset" class="mainBtn" name="delete" value="Delete"/></td>
           </tr>
       </table>
       <%
      }
       %>
  </form>
  
  <%
 
	  Notice nt = new Notice();
	  
	  nt.setNoid(Integer.parseInt(request.getParameter("noid")));
	  nt.setPublishby(request.getParameter("publish"));
      nt.setSubject(request.getParameter("subject"));
      nt.setDetail(request.getParameter("detail"));
      nt.setFile(request.getParameter("file"));
      nt.setImage(request.getParameter("image"));
      nt.setDatetime(request.getParameter("datetime"));
      String q = "";
 
      if(request.getParameter("update") != null)
      {
      if(!nt.getImage().equals("") && !nt.getFile().equals(""))
      {
    	  q = DAO.addNewRecord("update notice set subject='"+nt.getSubject()+"',detail='"+nt.getDetail()+"',datetime='"+nt.getDatetime()+"' where noid='"+nt.getNoid()+"'");
      }
      else
      {
    	  q = DAO.addNewRecord("update notice set subject='"+nt.getSubject()+"',detail='"+nt.getDetail()+"',file='"+nt.getFile()+"',image='"+nt.getImage()+"',datetime='"+nt.getDatetime()+"' where noid='"+nt.getNoid()+"'");
          
      }
    	  if(q.equals("yes"))
    		  out.print("Updated..........");
    	  else
    		  out.print("Not Updated.......");
      
  }
  else if(request.getParameter("delete") != null)
  {
	  q = DAO.addNewRecord("delete from notice where noid='"+nt.getNoid()+"'");
	  
	  if(q.equals("yes"))
		  out.print("Deleted..........");
	  else
		  out.print("Not Deleted.......");
  }
  %>
  
</center>
</body>
</html>