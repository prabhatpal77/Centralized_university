<%@page import="bs.dao.DAO"%>
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
    if ((document.example2.opass.value=="")){
		        alert("Enter Old Password!")
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
if (!example2.coursename.value.match(/^[a-z A-Z]+$/) && example2.coursename.value !="")
{
	example2.coursename.value="";
	example2.coursename.focus();

}
}
</script>
<script type="text/javascript" src="passtest.js"></script>
<%
String unilid = session.getValue("unilid").toString();
String unipwd = session.getValue("unipwd").toString();
%>
</head>
<body>
<center>
        <form name="example2" onsubmit="return validate()">
<fieldset>
                  <legend>Change Password</legend>
                  <table border="1" cellpadding="10" style="background-color:#caf5ff;">
                      <tr>
                          <td><b>Old Password</b></td>
                          <td><input type="password" name="opass"/><font color="red">*</font></td>
                      </tr>
                      <tr>
                          <td><b>New Password</b></td>
                          <td><input type="password" name="npass" name="pass1" id="pass1"/><font color="red">*</font></td>
                      </tr>
                      <tr>
                          <td><b>Re Password</b></td>
                          <td><input type="password" name="cpass" name="pass2" id="pass2" onkeyup="checkPass(); return false;"/><font color="red">*</font></td>
                      </tr>
                      <tr>
                          <td><input type="submit" value="Change" class="mainBtn" name="submit" id="sign_user" onclick="ValidateNo();"/></td>
                          <td> <input type="reset" value="Reset" class="mainBtn" name="reset"/> </td>
                      </tr>
                  </table>
                  </fieldset>
              </form>
              
              <%
              if(request.getParameter("submit") != null)
              {
            	     String opass = request.getParameter("opass");
                     String npass = request.getParameter("npass");
                     String cpass = request.getParameter("cpass");
                     
                                      
                  if(!unipwd.equals(opass))
                  {
                    String m = "Old password does not match with database!!!";
                    //session.putValue("msg", m);
                  }
                  else
                  {
                    if(cpass.equals(npass))
                    {
                        String q = DAO.addNewRecord("update universityreg set upwd='"+npass+"' where ulid='"+unilid+"'");
                          
                        if(q.equals("yes"))
                          out.print("Password Changed Successfully!!!");
                        //int ur = db.userChangePass(npass, ulid);
                    
                    }
                    else
                    {
                     String m = "Confirm Password does not matched!!!!";
                     //request.setAttribute("msg", m);
                    }
                   }
                  session.invalidate();
                  RequestDispatcher rd = request.getRequestDispatcher("loginPage.jsp");
                    rd.forward(request, response);
                  }
              
              %>
              
              
              </center>

</body>
</html>