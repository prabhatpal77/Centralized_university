<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bs.model.branch"%>
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
    if ((document.example2.branchname.value=="")){
		        alert("Enter Branch Name!")
		        return false
	}
    if ((document.example2.ciiname.value=="")){
	        alert("Enter City Name!")
	        return false
    }
    if ((document.example2.pwd.value=="")){
	        alert("Enter Your Password!")
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
if (!example2.branchname.value.match(/^[a-z A-Z]+$/) && example2.branchname.value !="")
{
	example2.branchname.value="";
	example2.branchname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
<%session.getValue("ulid"); 
String branchid = request.getParameter("branchid");
%>
</head>
<body>
<center>
  <form action="branchUpDel.jsp" method="post">
     <%
       ResultSet rs = DAO.showAllRecord("select * from branchreg where branchid='"+branchid+"'");
     
     while(rs.next())
     {
     %>
     
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
       <caption><h3>Branch Update / Delete</h3></caption>
            <tr>
              <td><b>Course</td>
              <td><input type="text" name="courseid" value="<%out.print(rs.getString(1));%>"/></td>
            </tr>
            <tr>
               <td><b>Branch</td>
               <td><input type="text" name="branchid" value="<%out.print(rs.getString(2));%>"/></td>
            </tr>
            <tr>
              <td><b>Branch name</td>
              <td><input type="text" name="branchname" value="<%out.print(rs.getString(3));%>"/></td>
            </tr>
            <tr>
              <td><b>Branch Icon</td>
              <td><img src="adminimg/<%out.print(rs.getString(4));%>" height="100" width="100"/><input type="file" name="branchicon"/></td>
            </tr>
            <tr>
               <td><b>Branch Desc</td>
               <td><textarea name="branchdesc"><%out.print(rs.getString(5));%></textarea></td>
            </tr>
            <tr>
              <td><input type="submit" name="btn" class="mainBtn" value="Update"/></td>
              <td><input type="reset" name="btn" class="mainBtn" value="Delete"/></td>
            </tr>
         </table>
     <% } %>
  </form>
</center>
</body>
</html>