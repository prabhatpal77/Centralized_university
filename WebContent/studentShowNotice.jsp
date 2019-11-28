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
<script type="text/javascript">

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please Enter Only 10 Numbers.");
            return false;
        }

        return true;
    }

    function ValidateNo() {
        var phoneNo = document.getElementById('txtPhoneNo');

    if (phoneNo.value == "" || phoneNo.value == null) {
            alert("Enter Your Fill Name!\nEnter Your Password!\nEnter Your Confirm Password!\nEnter Your Mobile No.!\nEnter Your Date of Birth!\nEnter Your E-Mail-ID!\nEnter Your Answer!")
		        return false;
        }
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

        alert("Success ");
        return true;
        }
</script>
<script type="text/javascript" src="Acceptonlynumber/jquery.min.js"></script>

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        $(function () {
            $(".numeric").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                $(".error").css("display", ret ? "none" : "inline");
                return ret;
            });
            $(".numeric").bind("paste", function (e) {
                return false;
            });
            $(".numeric").bind("drop", function (e) {
                return false;
            });
        });
    </script>
<script type="text/javascript">

function validate(){
    if ((document.example2.noticename1.value=="")){
		        alert("Enter Notice Subject!")
		        return false
	}
    if ((document.example2.npass.value=="")){
	        alert("Enter New Password!")
	        return false
    }
    if ((document.example2.cpass.value=="")){
	        alert("Enter Confirm Password!")
	        return false
    }
    if ((document.example2.cpwd.value=="")){
		        alert("Enter Your Confirm Password!")
		        return false
    }
    if ((document.example2.mob.value=="")){
		        alert("Enter Your Mobile!")
		        return false
    }
    if ((document.example2.dob.value=="")){
		        alert("Enter Your Date of Birth!")
		        return false
    }
    if ((document.example2.eid.value=="")){
		        alert("Enter Your E-Mail-ID!")
		        return false
    }
    if ((document.example2.qid.value=="")){
		        alert("Select Your Question!")
		        return false
    }
    if ((document.example2.sa.value=="")){
		        alert("Enter Your Answer!")
		        return false
    }
    else
        return true
}

</script>
<script type="text/javascript">
function AllowAlphabet(){
if (!example2.noticename.value.match(/^[a-z A-Z]+$/) && example2.noticename.value !="")
{
	example2.noticename.value="";
	example2.noticename.focus();

}
}
</script>
<script type="text/javascript" src="passtest.js"></script>
<%
String stulid = session.getValue("stulid").toString();
%>
</head>
<body>
   <center>
      <form name="example2" onsubmit="return validate()">
          <table border="1" cellpadding="10" style="background-color:#caf5ff;">
          <caption><h3>Search Notice</h3></caption>
          <tr>
             
             <td><select name="admin">
             <option value="-select admin-">--Select Admin</option>
             <option value="admin">Admin</option>
             </select></td></tr>
          <tr>
               <td><select name="uid">
               <option value="-select uni-">-Select University-</option>
               <%
                 ResultSet rs = DAO.showAllRecord("select * from universityreg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(6)+">"+rs.getString(2)+"</option>");
               }
               rs.close();
               %>
             </select></td></tr>
             <tr>
              <td><select name="clgid">
               <option value="-select clgid-">-Select College-</option>
               <%
                 rs = DAO.showAllRecord("select * from collegereg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(4)+">"+rs.getString(2)+"</option>");
               }
               
               %>
             </select></td></tr>
         <tr>
         <td><input type="text" name="noticename" placeholder="Notice Subject"/></td>
         </tr>
              <tr>
                 <td><input type="submit" name="search" class="mainBtn" id="sign_user" onclick="ValidateNo();" Value="Search"/></td>
              </tr>
          </table>
      </form>
      
      <%
        if(request.getParameter("search") != null)
        {
        	Notice nt = new Notice();
        	
        	nt.setAdmin(request.getParameter("admin"));
        	nt.setUid(request.getParameter("uid"));
        	nt.setClgid(request.getParameter("clgid"));
        	nt.setNoticename(request.getParameter("noticename"));
        	%>
        	
        	<table border="1" cellpadding="10" style="background-color:#caf5ff;">
        	  <tr>
        	     <th>Notice ID</th>
        	     <th>Subject</th>
        	     <th>Detail</th>
        	     <th>File</th>
        	     <th>Image</th>
        	     <th>Date/time</th>
        	  </tr>
        	<% 
        	
        	if(!nt.getAdmin().equals("-select admin-"))
                 rs = DAO.showAllRecord("select * from notice where publishby='admin'");
        	
        	else if(!nt.getUid().equals("-select uni-"))
        		rs = DAO.showAllRecord("select * from notice where publishby='"+nt.getUid()+"'");
        	
        	else if(!nt.getClgid().equals("-select clgid-"))
        		rs = DAO.showAllRecord("select * from notice where publishby='"+nt.getClgid()+"'");
        	
        	else if(!nt.getNoticename().equals(""))
        		rs = DAO.showAllRecord("select * from notice where subject like '%"+nt.getNoticename()+"%'");
        	
        	else
        		rs = DAO.showAllRecord("select * from notice");
        	
         while(rs.next())
         {
        	 %>
        	 <tr>
        	    <td><%out.print(rs.getString(1)); %></td>
        	    <td><%out.print(rs.getString(3)); %></td>
        	    <td><%out.print(rs.getString(4)); %></td>
        	    <td><a href="adminimg/<%out.print(rs.getString(5)); %>" download class="mainBtns">Download</a></td>
        	    <td><img src="adminimg/<%out.print(rs.getString(6)); %>" height="100" width="100"/></td>
        	    <td><%out.print(rs.getString(7)); %></td>
        	 </tr>
        	 <% 
         }
        }
      %>
      </table>
   </center>
</body>
</html>