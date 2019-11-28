<%@page import="bs.model.College"%>
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
<%String unilid = session.getValue("unilid").toString(); %>
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
    if ((document.example2.clgname.value=="")){
		        alert("Enter College Name!")
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
if (!example2.clgname.value.match(/^[a-z A-Z]+$/) && example2.clgname.value !="")
{
	example2.clgname.value="";
	example2.clgname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
</head>
<body>
<center>
   <form  name="example2" onsubmit="return validate()">
       <table border="1" cellpadding="10" style="background-color:#caf5ff;">
       <caption><h3>Search College</h3></caption>
          <tr>
             
             <td><select name="sid">
                <option value="-select state-">-Select State-</option>
                <% 
                ResultSet rs = DAO.showAllRecord("select * from state");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select></td></tr>
          <tr>
             <td><select name="ciid">
                <option value="-select city-">-Select City-</option>
                <% 
                rs = DAO.showAllRecord("select * from city");
                while(rs.next())
                {
                	out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
                }
                %>
             </select></td></tr>
          <tr>
             <td><input type="text" name="clgname" onkeyup="AllowAlphabet()" placeholder="College Name"/><font color="red">*</font></td>
          </tr>
          <tr>
             <td><input type="submit" id="sign_user" onclick="ValidateNo();" class="mainBtn" name="submit" Value="Submit"/>
             &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" class="mainBtn" Value="Reset"/></td>
          </tr>
       </table>
   </form>
  <%
      if(request.getParameter("submit") != null)
      {
    	  College clg = new College();
    	  
    	  clg.setSid(request.getParameter("sid"));
    	  clg.setCiid(request.getParameter("ciid"));
    	  clg.setClgname(request.getParameter("clgname"));
    	  %>
    	  <table>
    	  <% 
    	  rs = DAO.showAllRecord("select * from state,city where state.sid='"+clg.getSid()+"' and city.ciid='"+clg.getCiid()+"'");
    	  
    	  while(rs.next())
    	  {
    	%>
    	<tr>
    	   <td><%out.print(rs.getString(3)); %></td>
    	   <td><%out.print(rs.getString(8)); %></td>
    	   
    	</tr>  
    	  <%
    	  }
    	  %>
    	  </table>
    	  
    	  <table border="1" cellpadding="10" style="background-color:#caf5ff;">
    	  <caption><h3>College List</h3></caption>
    	     <tr>
    	        <th>College ID</th>
    	        <th>College Name</th>
    	        <th>Email ID</th>
    	        <th>Website</th>
    	        <th>Mobile No</th>
    	        <th>Address</th>
    	        <th></th>
    	     </tr>
    	     <%
    	     
    	     if(!clg.getSid().equals("-select state-") && !clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
    	        rs = DAO.showAllRecord("select * from collegereg where sid='"+clg.getSid()+"' and ciid='"+clg.getCiid()+"' and clgname like '%"+clg.getClgname()+"' and status='active' and unilid='"+unilid+"'");
    	     
    	     else if(!clg.getSid().equals("-select state-") && !clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where sid='"+clg.getSid()+"' and ciid='"+clg.getCiid()+"' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(!clg.getSid().equals("-select state-") && clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where sid='"+clg.getSid()+"' and clgname like '%"+clg.getClgname()+"' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(!clg.getSid().equals("-select state-") && clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where sid='"+clg.getSid()+"' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(clg.getSid().equals("-select state-") && !clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where ciid='"+clg.getCiid()+"' and clgname like '%"+clg.getClgname()+"' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(clg.getSid().equals("-select state-") && !clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where ciid='"+clg.getCiid()+"' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(clg.getSid().equals("-select state-") && clg.getCiid().equals("-select city-") && !clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where clgname like '%"+clg.getClgname()+"%' and status='active' and unilid='"+unilid+"'");
     	    
    	     else if(clg.getSid().equals("-select state-") && clg.getCiid().equals("-select city-") && clg.getClgname().equals(""))
     	        rs = DAO.showAllRecord("select * from collegereg where  status='active' and unilid='"+unilid+"'");
     	    
    	     else 
      	        rs = DAO.showAllRecord("select * from collegereg where  status='active' and unilid='"+unilid+"'");
      	    
    	     while(rs.next())
    	     {
    	     %>
    	     <tr>
    	         <td><%out.print(rs.getString(1)); %></td>
    	         <td><%out.print(rs.getString(2)); %></td>
    	         <td><%out.print(rs.getString(4)); %></td>
    	         <td><%out.print(rs.getString(5)); %></td>
    	         <td><%out.print(rs.getString(6)); %></td>
    	         <td><%out.print(rs.getString(7)); %></td>
    	         <%out.print("<td><a href=collegeUpdate.jsp?clglid="+rs.getString(11)+" class=\"mainBtns\">Update/Delete</a></td>"); %>
    	     </tr>
    	     <%
    	     }
    	     %>
    	  </table>
    		<%   
        }
  %>
</center>
</body>
</html>