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
            alert("Search Student Aadhar Card No.");
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
    if ((document.example2.aadhar.value=="")){
		        alert("Search Student Aadhar Card No.!")
		        return false
	}
    if ((document.example2.aadhaar.value=="")){
	        alert("Enter Your Fill Name!")
	        return false
    }
    
    else
        return true
}

</script>
<script type="text/javascript">
function AllowAlphabet(){
if (!example2.cname.value.match(/^[a-z A-Z]+$/) && example2.cname.value !="")
{
	example2.cname.value="";
	example2.cname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
<script type="text/javascript" src="jquery.min.js"></script>
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
<%String stulid = session.getValue("stulid").toString(); 
String courseid = "",branchid = "";%>
</head>
<body>
<center>
   <form> 
   <table border="1" cellpadding="10" style="background-color:#caf5ff;">
      <%
         ResultSet rs = DAO.showAllRecord("select courseid,branchid from studentreg where emailid='"+stulid+"'");
      
      while(rs.next())
      {
    	  courseid = rs.getString(1);
    	  branchid = rs.getString(2);
      }
      %>
      </table>
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
      <tr>
         <th>Student Name</th>
         <th>Email ID</th>
         <th>Roll No</th>
         
      </tr>
      <%
      
      rs = DAO.showAllRecord("select c.coursename,b.branchname from coursereg c,branchreg b where c.courseid='"+courseid+"' and b.branchid='"+branchid+"'");
      
      if(rs.next())
      {
    	  %>
    	  Course Name&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="coursename" value="<%out.print(rs.getString(1));%>"/><br/>
    	  Branch Name&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="branchname" value="<%out.print(rs.getString(2));%>"/>
    	  
    	  <% 
      }
      
      rs = DAO.showAllRecord("select * from studentreg where courseid='"+courseid+"' and branchid='"+branchid+"' and status='active'");
      
      while(rs.next())
      {
      %>
      </br></br>
      <tr>
         <td><%out.print(rs.getString(2)); %></td>
         <td><%out.print(rs.getString(7)); %></td>
         <td><%out.print(rs.getString(18)); %></td>
      </tr>
      <%
      }
      %>
      </table>
         </form>
</center>
</body>
</html>