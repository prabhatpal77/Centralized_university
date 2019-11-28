<%@page import="bs.model.Student"%>
<%@page import="bs.model.College"%>
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
      <table border="1" cellpadding="10" style="background-color:#caf5ff;">
       <caption><h3>Search Student</h3></caption>
          <tr>
             <td><select name="uid">
               <option value="-select uni-">-Select University-</option>
               <%
                 ResultSet rs = DAO.showAllRecord("select * from universityreg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
               }
               %>
             </select></td></tr>
             <tr><td><select name="clgid">
               <option value="-select clg-">-Select College-</option>
               <%
                 rs = DAO.showAllRecord("select * from collegereg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(4)+">"+rs.getString(2)+"</option>");
               }
               %>
             </select></td></tr>
          <tr>
             <td><input type="text" name="stuname" placeholder="Student Name"/></td></tr>
             <tr><td><input type="submit" class="mainBtn" name="search" Value="Search"/></td>
          </tr>
      </table>
    </form>
    <% 
     if(request.getParameter("search") != null)
     {
    	 College clg = new College();
    	 Student stu = new Student();
    	 
    	 clg.setUnilid(request.getParameter("uid"));
    	 clg.setEmailid(request.getParameter("clgid"));
    	 stu.setStuname(request.getParameter("stuname"));
    	 
    	 %>
    	 <table>
    	    <tr> 
    	    <th><h3>Display Student</h3></th>
    	    
    	    </tr>
    	    <%
    	    rs = DAO.showAllRecord("select * from collegereg,universityreg where collegereg.emailid='"+clg.getEmailid()+"' and universityreg.uid='"+clg.getUnilid()+"'");
    	    
    	    while(rs.next())
    	    {
    	    %>
    	    <tr>
    	       <td><%out.print(rs.getString(16)); %></td>
    	       <td><%out.print(rs.getString(4)); %></td>
    	    </tr>
    	    <%
    	    }
    	    %>
    	 </table>
    	 
    	 <table border="1" cellpadding="10" style="background-color:#caf5ff;">
    	    <tr>
    	       <th>Student ID</th>
    	       <th>Student Name</th>
    	       <th>Email ID</th>
    	       <th>College Name</th>
    	       <th>Roll No</th>
    	       <th>Mobile No</th>
    	       <th>Address</th>
    	       <th></th>
    	    </tr>
    	    <%
    	    
    	    if(!clg.getUnilid().equals("-select uni-") && !clg.getEmailid().equals("-select clg-") && !stu.getStuname().equals(""))
    	       rs = DAO.showAllRecord("select * from studentreg where uid='"+clg.getUnilid()+"' and clglid='"+clg.getEmailid()+"' and stuname like '%"+stu.getStuname()+"%' and status='active'");
    	    
    	    else if(!clg.getUnilid().equals("-select uni-") && !clg.getEmailid().equals("-select clg-") && stu.getStuname().equals(""))
     	       rs = DAO.showAllRecord("select * from studentreg where uid='"+clg.getUnilid()+"' and clglid='"+clg.getEmailid()+"' and status='active'");
     	    
    	    else if(!clg.getUnilid().equals("-select uni-") && clg.getEmailid().equals("-select clg-") && !stu.getStuname().equals(""))
     	       rs = DAO.showAllRecord("select * from studentreg where uid='"+clg.getUnilid()+"' and stuname like '%"+stu.getStuname()+"%' and status='active'");
     	    
    	    else if(!clg.getUnilid().equals("-select uni-") && clg.getEmailid().equals("-select clg-") && stu.getStuname().equals(""))
     	       rs = DAO.showAllRecord("select * from studentreg where uid='"+clg.getUnilid()+"' and status='active'");
     	    
    	    else if(clg.getUnilid().equals("-select uni-") && !clg.getEmailid().equals("-select clg-") && !stu.getStuname().equals(""))
      	       rs = DAO.showAllRecord("select * from studentreg where clglid='"+clg.getEmailid()+"' and stuname like '%"+stu.getStuname()+"%' and status='active'");
      	    
     	    else if(clg.getUnilid().equals("-select uni-") && !clg.getEmailid().equals("-select clg-") && stu.getStuname().equals(""))
      	       rs = DAO.showAllRecord("select * from studentreg where clglid='"+clg.getEmailid()+"' and status='active'");
      	    
     	    else if(clg.getUnilid().equals("-select uni-") && clg.getEmailid().equals("-select clg-") && !stu.getStuname().equals(""))
      	       rs = DAO.showAllRecord("select * from studentreg where stuname like '%"+stu.getStuname()+"%' and status='active'");
      	    
     	    else if(clg.getUnilid().equals("-select uni-") && clg.getEmailid().equals("-select clg-") && stu.getStuname().equals(""))
      	       rs = DAO.showAllRecord("select * from studentreg where status='active'");
      	    
    	    
    	    else 
    	    	rs = DAO.showAllRecord("select * from studentreg where  status='active'");
     	    
    	    while(rs.next())
    	    {
    	    %>
    	    <tr>
    	       <td><%out.print(rs.getString(1)); %></td>
    	       <td><%out.print(rs.getString(2)); %></td>
    	       <td><%out.print(rs.getString(7)); %></td>
    	       <td><%out.print(rs.getString(19)); %></td>
    	       <td><%out.print(rs.getString(18)); %></td>
    	       <td><%out.print(rs.getString(8)); %></td>
    	       <td><%out.print(rs.getString(10)); %></td>
    	       <%
    	       out.print("<td><a href=adminStudentDetail.jsp?stuid="+rs.getString(1)+" class=\"mainBtns\">Detail</a></td>");
    	       %>
    	    </tr>
    	    <%
    	    }
    	    %>
    	 </table>
    	 <% 
     }
    %>
   </form>
</center>
</body>
</html>