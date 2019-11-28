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
</head>
<body>
<center>
  
     <form action="citySubmit.jsp" name="example2" onsubmit="return validate()">
     <h3>City Insert</h3>
     <table border="1" cellpadding="5" style="background-color:#caf5ff;">
        <tr>
           <td><b>State Name</b></td>
           <td><select name="sid">
             <option value="-select state-">-Select State-</option>
             <%
               ResultSet rs = DAO.showAllRecord("select * from state");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
             }
             %>
           </select><font color="red">*</font></td>
        </tr>
        <tr>
           <td><b>City Name</b></td>
           <td><input type="text" name="ciiname"  onkeyup="AllowAlphabet()"/><font color="red">*</font></td>
        </tr>
        <tr>
           <td><b>City Map</b></td>
           <td><input type="file" name="ciimap"/></td>
        </tr>
        <tr>
           <td><b>City Desc</b></td>
           <td><textarea name="ciidesc"></textarea></td>
        </tr>
        <tr>
           <td><input type="submit" id="sign_user" onclick="ValidateNo();" class="mainBtn" name="submit" value="Submit"/></td>
           <td><input type="reset" class="mainBtn" name="reset" value="Reset"/></td>
        </tr>
     </table>
  </form>
  
  
   <form>
      <table border="1" cellpadding="5" style="background-color:#caf5ff;">
      <caption><h3>City Display</h3></caption>
          <tr>
             <th>State Name</th>
             <th>City ID</th>
             <th>City Name</th>
             <th>City Map</th>
             <th>City Desc</th>
             <th></th>
          </tr>
          <%
              rs = DAO.showAllRecord("select * from city");
             
             if(rs.next())
             {
            	 do
            	 {
          %>
          <tr>
             <td><%out.print(rs.getString(1)); %></td>
             <td><%out.print(rs.getString(2)); %></td>
             <td><%out.print(rs.getString(3)); %></td>
             <%
                 out.println("<td><img src=adminimg/"+rs.getString(4)+" height=100 width=100></td>");
           %>
             <td><%out.print(rs.getString(5)); %></td>
             <%
         out.println("<td><a href=cityUpdate.jsp?ciid="+rs.getString(2)+" class=\"mainBtns\">Update / Delete</a></td>");
    %>
     </tr>
          <%
          }while(rs.next());
             }
             %>
      </table>
  </form>
</center>
</body>
</html>