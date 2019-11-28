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
  <form action="studentUpdate.jsp">
  <%
  String stuid = request.getParameter("stuid");
  
  ResultSet rs = DAO.showAllRecord("select * from studentreg where stuid='"+stuid+"'");
  
  while(rs.next())
  {
  %>
     <table border="1" cellpadding="10" style="background-color:#caf5ff;">
     <caption><h3>Student Detail</h3></caption>
        <tr>
           <td><b>Student ID</td>
           <td><input type="text" name="stuid" value="<%out.print(rs.getString(1));%>"/></td>
        </tr>
          <tr>
             <td><b>Student Name</b></td>
             <td><input type="text" name="stuname" value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
             <td><b>Father Name</b></td>
             <td><input type="text" name="stufname" value="<%out.print(rs.getString(3));%>"/></td>
          </tr>
          <tr>
          <td><b>Gender</b></td>
             <td><input type="text" name="gen" value="<%out.print(rs.getString(20)); %>"/>Female</td>
          </tr>
          <tr>
             <td><b>University Name</b></td>
             <td><input type="text" name="uni" value="<%out.print(rs.getString(4));%>"/></td>
          </tr>
          <tr>
             <td><b>Course Name</b></td>
             <td><input type="text" name="courseid" value="<%out.print(rs.getString(5));%>"/></td>
          </tr>
          <tr>
             <td><b>Branch Name</b></td>
             <td><input type="text" name="branchid" value="<%out.print(rs.getString(6));%>"/></td>
          </tr>
          <tr>
             <td><b>College Name</b></td>
             <td><input type="text" name="clglid" value="<%out.print(rs.getString(19));%>"/></td>
          </tr>
          <tr>
             <td><b>Admission Batch</b></td>
             <td><input type="text" name="batch" value="<%out.print(rs.getString(22));%>"/></td>
          </tr>
          <tr>
             <td><b>Enrollment No</b></td>
             <td><input type="text" name="rollno" value="<%out.print(rs.getString(18));%>"/></td>
          </tr>
          <tr>
             <td><b>Aadhar Card</b></td>
             <td><input type="text" name="aadhar" id="aadhar" value="<%out.print(rs.getString(21));%>"/><font color="red">*</font></td>
          </tr>
          <tr>
             <td><b>Email ID</b></td>
             <td><input type="email" name="emailid" value="<%out.print(rs.getString(7));%>"/></td>
          </tr>
          <tr>
             <td><b>Mobile No</b></td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(8));%>"/></td>
          </tr>
          <tr>
             <td><b>Date Of Birth</b></td>
             <td><input type="date" name="dob" value="<%out.print(rs.getString(9));%>"/></td>
          </tr>
          <tr>
             <td><b>Address</b></td>
             <td><textarea name="address"><%out.print(rs.getString(10));%></textarea></td>
          </tr>
          <tr>
             <td><b>State</b></td>
             <td><input type="text" name="sid" value="<%out.print(rs.getString(11));%>"/></td>
          </tr>
          <tr>
             <td><b>City</b></td>
             <td><input type="text" name="ciid" value="<%out.print(rs.getString(12));%>"/></td>
          </tr>
          <tr>
             <td><b>Pincode</b></td>
             <td><input type="text" name="pcode" value="<%out.print(rs.getString(13));%>"></td>
          </tr>
          <tr>
            <td><b>Photo Upload</b></td>
            <td><img src="adminimg/<%out.print(rs.getString(14)); %>" height="100" width="100"/><input type="file" name="photo"/></td>
          </tr>
          
        
     </table>
     <%
  }
     %>
  </form>
</center>

</body>
</html>