<%@page import="bs.dao.DAO"%>
<%@page import="java.sql.ResultSet"%>
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
    if ((document.example2.stuname.value=="")){
		        alert("Enter Student Name!")
		        return false
	}
    if ((document.example2.stufname.value=="")){
	        alert("Enter Father Name!")
	        return false
    }
    if ((document.example2.batch.value=="")){
	        alert("Enter Admission Batch!")
	        return false
    }
    if ((document.example2.rollno.value=="")){
		        alert("Enter Enrollment No.!")
		        return false
    }
    if ((document.example2.emailid.value=="")){
		        alert("Enter Email ID!")
		        return false
    }
    if ((document.example2.mob.value=="")){
		        alert("Enter Mobile No.!")
		        return false
    }
    if ((document.example2.aadhar.value=="")){
		        alert("Enter Aadhar Card No.!")
		        return false
    }
    if ((document.example2.pin.value=="")){
		        alert("Enter Pincode!")
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
if (!example2.stuname.value.match(/^[a-z A-Z]+$/) && example2.stuname.value !="")
{
	example2.stuname.value="";
	example2.stuname.focus();

}
if (!example2.stufname.value.match(/^[a-z A-Z]+$/) && example2.stufname.value !="")
{
	example2.stufname.value="";
	example2.stufname.focus();

}

}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
<%
String clglid = session.getValue("clglid").toString();
String clgid = "";
ResultSet rs = DAO.showAllRecord("select clgid from collegereg where clglid='"+clglid+"'");
while(rs.next())
{
	clgid = rs.getString(1);
}
//out.print(clgid);
%>
</head>
<body>
   <center>
     <form action="studentSubmit.jsp" method="post" name="example2" onsubmit="return validate()">
     <h3>Student Registration</h3>
        <table border="1" cellpadding="10" style="background-color:#caf5ff;">

          <tr>
             <td><b>Student Name</td>
             <td><input type="text" name="stuname" id="stuname" onkeyup="AllowAlphabet()"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Father Name</td>
             <td><input type="text" name="stufname" id="stufname" onkeyup="AllowAlphabet()"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Gender</td>
             <td><input type="radio" name="gen" value="male"/>Male
             <input type="radio" name="gen" value="female"/>Female</td>
          </tr>
          <tr>
             <td><b>University Name</td>
             <td><select name="uid" id="uid">
             <option value="-1">-Select University-</option>
             <%
             rs = DAO.showAllRecord("select * from universityreg,collegereg where universityreg.ulid=collegereg.unilid and collegereg.clglid='"+clglid+"'");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
             }
             %>
             </select></td>
          </tr>
          <tr>
             <td><b>Course Name</td>
             <td><select name="courseid" id="courseid">
             <option value="-1">-Select Course-</option>
             <%
             rs = DAO.showAllRecord("select * from coursereg where clgid='"+clgid+"'");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
             }
             %>
             </select></td>
          </tr>
          <tr>
             <td><b>Branch Name</td>
             <td><select name="branchid" id="branchid">
             <option value="-1">-Select Branch-</option>
             <%
             rs = DAO.showAllRecord("select * from branchreg,coursereg where branchreg.courseid=coursereg.courseid");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
             }
             %>
             </select></td>
          </tr>
          <tr>
             <td><b>Admission Batch</td>
             <td><input type="text" name="batch"/><font color="red">*</font></td>
          </tr>
          <tr>
             <td><b>Enrollment No</td>
             <td><input type="text" name="rollno" id="rollno"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Email ID</td>
             <td><input type="email" name="emailid" id="email"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Mobile No</td>
             <td><input type="text" name="mno" id="mno"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Aadhar Card</td>
             <td><input type="text" name="aadhar" id="aadhar"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
             <td><b>Date Of Birth</td>
             <td><input type="date" name="dob"/></td>
          </tr>
          <tr>
             <td><b>Address</td>
             <td><textarea name="address"></textarea></td>
          </tr>
          <tr>
             <td><b>State</td>
             <td><select name="sid" id="sid">
                <option value="-1">-Select State-</option>
                <% 
                rs = DAO.showAllRecord("select * from state");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select></td>
          </tr>
          <tr>
             <td><b>City</td>
             <td><select name="ciid" id="ciid">
                <option value="-1">-Select City-</option>
                <% 
                rs = DAO.showAllRecord("select * from city");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select></td>
          </tr>
          <tr>
             <td><b>Pincode</td>
             <td><input type="text" name="pcode" id="pcode"/><font color="red" size="4">*</font></td>
          </tr>
          <tr>
            <td><b>Photo Upload</td>
            <td><input type="file" name="photo" id="photo"/></td>
          </tr>
          <tr>
            <td><input type="submit" name="submit" class="mainBtn" value="Submit"  id="sign_user" onclick="ValidateNo();"/></td>
            <td><input type="reset" name="reset" class="mainBtn" value="Reset"/></td>
          </tr>
          
        </table>
     </form>
   </center>
</body>
</html>