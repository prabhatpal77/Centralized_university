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
<% String ulid = session.getValue("unilid").toString(); %>
</head>
<body>
<center>
  <form action="universityUpDel.jsp" method="post">
     <% 
     ResultSet rs = DAO.showAllRecord("select * from universityreg where ulid='"+ulid+"'");
     
     while(rs.next())
     {
     %>
     <table border="1" cellpadding="10" style="background-color:#caf5ff;">
     <caption><h3>University Update</h3></caption>
     <tr>
        <td><b>University ID</td>
        <td><input type="text" name="uid" value="<%out.print(rs.getString(1));%>" readonly/></td>
     </tr>
          <tr>
             <td><b>University Name</td>
             <td><input type="text" name="name" value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
             <td><b>Established In</td>
             <td><input type="date" name="estab" value="<%out.print(rs.getString(3));%>"/></td>
          </tr>
          <tr>
             <td><b>Recognized</td>
             <td><input type="text" name="recog" value="<%out.print(rs.getString(4));%>"/></td>
          </tr>
          <tr>
             <td><b>University Type</td>
             <td><input type="text" name="type" value="<%out.print(rs.getString(5));%>"/></td>
          </tr>
          <tr>
             <td><b>Email ID</td>
             <td><input type="email" name="email" value="<%out.print(rs.getString(6));%>"/></td>
          </tr>
          <tr>
             <td><b>Website</td>
             <td><input type="text" name="web" value="<%out.print(rs.getString(7));%>"/></td>
          </tr>
          <tr>
             <td><b>Mobile No</td>
             <td><input type="text" name="mno" value="<%out.print(rs.getString(8));%>"/></td>
          </tr>
          <tr>
             <td><b>Address</td>
             <td><textarea name="add"><%out.print(rs.getString(9));%></textarea></td>
          </tr>
          <tr>
             <td><b>State</td>
             <td><input type="text" name="sid" value="<%out.print(rs.getString(10));%>"/></td>
          </tr>
          <tr>
             <td><b>City</td>
             <td><input type="text" name="ciid" value="<%out.print(rs.getString(11));%>"/></td>
          </tr>
          <tr>
            <td><b>Photo Upload</td>
            <td><img src="adminimg/<%out.print(rs.getString(14));%>" height="100" width="100"/><input type="file" name="photo"/></td>
          </tr>
          <tr>
            <td><input type="submit" name="btn" class="mainBtn" value="Update"/></td>
            <td><input type="reset" name="btn" class="mainBtn" value="Delete"/></td>
          </tr>
       </table>
       <%
     }
       %>
  </form>
</center>
</body>
</html>