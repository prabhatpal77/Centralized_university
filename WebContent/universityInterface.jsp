<%@page import="java.sql.ResultSet"%>
<%@page import="bs.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="validate.js"></script>
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">
<%session.getValue("alid"); %>
  
</head>
<body>
<center>
   <form action="universitySubmit.jsp" name="university" method="post" onsubmit="return(universityValidate());">
   <h3>University Registration</h3>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
          <tr>
             <td><b>University Name</b></td>
             <td><input type="text" name="name" id="name"/><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Established In</b></td>
             <td><input type="date" name="estab" id="estab"/></td>
          </tr>
          <tr>
             <td><b>Recognized</b></td>
             <td><select name="recog" id="recog">
             <option value="-1">-Select Recognization-</option>
             <option value="ugc">UGC</option>
             <option value="aicte">AICTE</option>
             <option value="other">Other</option>
             </select><font color="red">*</td>
          </tr>
          <tr>
             <td><b>University Type</b></td>
             <td><select name="type" id="type">
             <option value="-1">-Select Type-</option>
             <option value="pvt">Private</option>
             <option value="state">State</option>
             <option value="central">Central</option>
             <option value="deemed">Deemed University</option>
             <option value="other">Other</option>
             </select><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Email ID</b></td>
             <td><input type="email" name="email" id="email"/><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Website</b></td>
             <td><input type="text" name="web" id="web"/><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Mobile No</b></td>
             <td><input type="text" name="mno" id="mno"/><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Address</b></td>
             <td><textarea name="add" id="add"></textarea></td>
          </tr>
          <tr>
             <td><b>State</b></td>
             <td><select name="sid" id="sid">
                <option value="-1">-Select State-</option>
                <% 
                ResultSet rs = DAO.showAllRecord("select * from state");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select><font color="red">*</td>
          </tr>
          <tr>
             <td><b>City</b></td>
             <td><select name="ciid" id="ciid">
                <option value="-1">-Select City-</option>
                <% 
                rs = DAO.showAllRecord("select * from city");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select><font color="red">*</td>
          </tr>
          <tr>
            <td><b>Photo Upload</b></td>
            <td><input type="file" name="photo" id="photo"/><font color="red">*</td>
          </tr>
          <tr>
            <td><input type="submit" class="mainBtn" name="submit" value="Submit" onsubmit="return(universityValidate());"/></td>
            <td><input type="reset" class="mainBtn" name="reset" value="Reset"/></td>
          </tr>
       </table>
   </form>
</center>
</body>
</html>