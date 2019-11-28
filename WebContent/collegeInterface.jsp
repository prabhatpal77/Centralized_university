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
    if ((document.example2.sid.value=="")){
		        alert("Select City!")
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
if (!example2.ciiname.value.match(/^[a-z A-Z]+$/) && example2.ciiname.value !="")
{
	example2.ciiname.value="";
	example2.ciiname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
<% String unilid = session.getValue("unilid").toString(); %>
</head>
<body>
   <center>
     <form action="collegeSubmit.jsp" method="post" name="college" onsubmit="return(collegeValidate());">
     <h3>College Registration</h3>
     <% 
     String type = "";
     ResultSet rs = DAO.showAllRecord("select type from universityreg where email='"+unilid+"'");
     
     while(rs.next())
     {
    	 type = rs.getString(1);
     }
     
     %>
        <table border="1" cellpadding="10" style="background-color:#caf5ff;">
        
            <tr>
              <td><b>College Name</td>
              <td><input type="text" name="clgname" id="clgname"/><font color="red">*</td>
            </tr>
            <tr>
              <td><b>Established In</td>
              <td><input type="date" name="estab"/></td>
            </tr>
            <tr>
               <td><b>Type</td>
               <td><select name="type" id="type">
               <option value="-1">-Select Type-</option>
               <%
                 if(!type.equals("pvt"))
                 {
                	 out.print("<option value=pvt>Private</option>");
                	 out.print("<option value=govt>Government</option>");
                	 out.print("<option value=semi-govt>Semi - Government</option>");
                	 out.print("<option value=other>Other</option>");
                 }
                 else
                 {
                	 out.print("<option value=pvt>Private</option>");
                 }
               %>
               </select><font color="red">*</td>
            </tr>
            <tr>
              <td><b>Email ID</td>
              <td><input type="email" name="emailid" id="email"/><font color="red">*</td>
            </tr>
            <tr>
              <td><b>Website</td>
              <td><input type="text" name="web" id="web"/><font color="red">*</td>
            </tr>
            <tr>
             <td><b>Mobile No</td>
             <td><input type="text" name="mno" id="mno"/><font color="red">*</td>
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
             </select><font color="red">*</td>
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
             </select><font color="red">*</td>
          </tr>
          <tr>
             <td><b>Address</td>
             <td><textarea name="add"></textarea></td>
          </tr>
          <tr>
            <td><b>Photo Upload</td>
            <td><input type="file" name="photo" id="photo"/><font color="red">*</td>
          </tr>
          <tr>
            <td><input type="submit" name="submit" class="mainBtn" value="Submit" onsubmit="return(collegeValidate());"/></td>
            <td><input type="reset" name="reset" class="mainBtn" value="Reset"/></td>
          </tr>
       
        </table>
     </form>
   </center>
</body>

</html>