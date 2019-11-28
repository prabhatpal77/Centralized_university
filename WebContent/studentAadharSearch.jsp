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
     <form  method="post" name="example2" onsubmit="return validate()">
        <h3>Student Aadhar</h3>
        <table border="1" cellpadding="10" style="background-color:#caf5ff;">
           <tr>
              <td><b>Aadhar Card No.</b></td>
              <td><input type="text" name="aadhar" id="text1" class="numeric"/><font color="red" size="4">*</font></td>
           </tr>
           <tr>
              <td><input type="submit" class="mainBtn" id="sign_user" onclick="ValidateNo();" name="search" value="Search"/></td>
              <td><input type="reset" name="reset" class="mainBtn" value="Reset"/></td>
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
    		<table border="1" cellpadding="10" style="background-color:#caf5ff;">
    		<caption><h3>Display Student</h3></caption>
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
             <td><input type="radio" name="gen" value="male"/>Male
             <input type="radio" name="gen" value="female"/>Female</td>
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
             <td><b>Enrollment No</b></td>
             <td><input type="text" name="rollno" value="<%out.print(rs.getString(18));%>"/></td>
          </tr>
          <tr>
             <td><b>Aadhar Card</b></td>
             <td><input type="text" name="aadhar" id="aadhar" value="<%out.print(rs.getString(21));%>"/></td>
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
            <td><img src="adminimg/<%out.print(rs.getString(14)); %>" height="100" width="100"/></td>
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