<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bs.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="validate.js"></script>
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
</head>
<body>
  <center>
     <form name="studentAadhar" method="post" onsubmit="return(studentAadhar());">
        <h3>Student Aadhar</h3>
        <table border="1" cellpadding="10" style="background-color:#caf5ff;">
           <tr>
              <td><b>Aadhar Card No</td>
              <td><input type="number" name="aadhar" id="aadhar"/></td>
           </tr>
           <tr>
              <td><input type="submit" name="search" value="Search" class="mainBtn" onsubmit="return(studentAadhar());"/></td>
              <td><input type="reset" name="reset" value="Reset" class="mainBtn"/></td>
           </tr>
        </table>
     </form>
     <%
       if(request.getParameter("search") != null)
       {
    	   Student stu = new Student();
    	   
    	   stu.setAadhar(request.getParameter("aadhar"));
    	   
    	   ResultSet rs = DAO.showAllRecord("select * from studentreg where aadhar='"+stu.getAadhar()+"' and status='active'");
    	   
    	   if(rs.next())
    	   {
    		%>
    		     <table>
        
          <tr>
             <td>Student Name</td>
             <td><input type="text" name="stuname" value="<%out.print(rs.getString(2));%>"/></td>
          </tr>
          <tr>
             <td>Father Name</td>
             <td><input type="text" name="stufname" value="<%out.print(rs.getString(3));%>"/></td>
          </tr>
          <tr>
             <td>Gender</td>
             <td><input type="radio" name="gen" value="male"/>Male
             <input type="radio" name="gen" value="female"/>Female</td>
          </tr>
          
          <tr>
             <td>Enrollment No</td>
             <td><input type="text" name="rollno" value="<%out.print(rs.getString(18));%>"/></td>
          </tr>
          <tr>
             <td>Aadhar Card</td>
             <td><input type="text" name="aadhar" id="aadhar" value="<%out.print(rs.getString(21));%>"/></td>
          </tr>
          <tr>
             <td>Email ID</td>
             <td><input type="email" name="emailid" value="<%out.print(rs.getString(7));%>"/></td>
          </tr>
          
          <tr>
             <td>Address</td>
             <td><textarea name="address"><%out.print(rs.getString(10));%></textarea></td>
          </tr>
        
     </table>
     <%
  }
    	   else
    	   {
    		   out.print("Record Not Found..........");
    	   }
    	   
       }
     %>
  </center>
</body>
</html>