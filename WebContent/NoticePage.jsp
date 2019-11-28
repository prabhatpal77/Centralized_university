<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" media="screen">
<link href="onlinetest/style.css" rel="stylesheet" media="screen">
<%
   String pub = request.getParameter("id");
%>
</head>
<body>
<center>
   <form action="noticePageSubmit.jsp" method="post">
   <h3>Notice Regsitration</h3>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
           <input type="hidden" name="publish" value="<%=pub %>"/>
           <tr>
              <td><b>Subject</b></td>
              <td><input type="text" name="subject" /></td>
           </tr>
           <tr>
              <td><b>Detail</b></td>
              <td><textarea name="detail"></textarea></td>
           </tr>
           <tr>
              <td><b>File Upload</b></td>
              <td><input type="file" name="file"/></td>
           </tr>
           <tr>
              <td><b>Image Upload</b></td>
              <td><input type="file" name="image"/></td>
           </tr>
           <tr>
              <td><input type="submit" class="mainBtn" name="submit" value="Submit"/></td>
              <td><input type="reset" class="mainBtn" name="reset" value="Reset"/></td>
           </tr>
       </table>
   </form>
</center>
</body>
</html>