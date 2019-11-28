<%@page import="bs.model.Student"%>
<%@page import="bs.model.College"%>
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
    if ((document.example2.stuna1me.value=="")){
		        alert("Enter Student Name!")
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
if (!example2.stuname.value.match(/^[a-z A-Z]+$/) && example2.stuname.value !="")
{
	example2.stuname.value="";
	example2.stuname.focus();

}
}
</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
<%String clglid = session.getValue("clglid").toString(); %>
</head>
<body>
<center>
  <form name="example2" onsubmit="return validate()">
     <table border="1" cellpadding="10" style="background-color:#caf5ff;">
     <caption><h3>Search Student</h3></caption>
        <tr>
             <td><select name="courseid">
             <option value="-select course-">-Select Course-</option>
             <%
             ResultSet rs = DAO.showAllRecord("select * from coursereg");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");
             }
             %>
             </select></td></tr>
        <tr>
             <td><select name="branchid">
             <option value="-select branch-">-Select Branch-</option>
             <%
             rs = DAO.showAllRecord("select * from branchreg");
             
             while(rs.next())
             {
            	 out.print("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");
             }
             %>
             </select></td></tr>
        <tr>
        <td><input type="text" name="stuname" onkeyup="AllowAlphabet()" placeholder="Student Name"/></td>
          </tr>
          <tr>
            <td><input type="submit" name="search" id="sign_user" onclick="ValidateNo();" class="mainBtn" Value="Search"/></td>
          </tr>
     </table>
  </form>
  <%
     if(request.getParameter("search") != null)
     {
    	Student stu = new Student();
    	
    	stu.setBranchid(request.getParameter("branchid"));
    	stu.setCourseid(request.getParameter("courseid"));
    	stu.setStuname(request.getParameter("stuname"));
    	%>
    	<table>
    	   
    	   <%
    	  rs = DAO.showAllRecord("select * from coursereg,branchreg where coursereg.courseid='"+stu.getCourseid()+"' and branchreg.branchid='"+stu.getBranchid()+"'");
       	
       	    while(rs.next())
       	    {
       	%>  
       	   <tr>
       	      <td><%out.print(rs.getString(2)); %></td>
       	      <td><%out.print(rs.getString(9)); %></td>
       	   </tr>  
    	   <%
       	    }
    	   %>
    	</table>
    	
    	<table border="1" cellpadding="10" style="background-color:#caf5ff;">
    	<caption><h3>Student List</h3></caption>
            <tr>
               <th>Student ID</th>
               <th>Student Name</th>
               <th>Email ID</th>
               <th>Mobile No</th>
               <th>Address</th>
               <th></th>
            </tr>
            <%
            if(!stu.getCourseid().equals("-select course-") && !stu.getBranchid().equals("-select branch-") && !stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where courseid='"+stu.getCourseid()+"' and branchid='"+stu.getBranchid()+"' and stuname like '%"+stu.getStuname()+"%' and clglid='"+clglid+"' and status='active'");
            
            else if(!stu.getCourseid().equals("-select course-") && !stu.getBranchid().equals("-select branch-") && stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where courseid='"+stu.getCourseid()+"' and branchid='"+stu.getBranchid()+"' and clglid='"+clglid+"' and status='active'");
            
            else if(!stu.getCourseid().equals("-select course-") && stu.getBranchid().equals("-select branch-") && !stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where courseid='"+stu.getCourseid()+"'  and stuname like '%"+stu.getStuname()+"%'and clglid='"+clglid+"' and status='active'");
            
            else if(!stu.getCourseid().equals("-select course-") && stu.getBranchid().equals("-select branch-") && stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where courseid='"+stu.getCourseid()+"' and clglid='"+clglid+"' and clglid='"+clglid+"' and status='active'");
            
            else if(stu.getCourseid().equals("-select course-") && !stu.getBranchid().equals("-select branch-") && !stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where branchid='"+stu.getBranchid()+"' and stuname like '%"+stu.getStuname()+"%'and clglid='"+clglid+"' and status='active'");
            
            else if(stu.getCourseid().equals("-select course-") && !stu.getBranchid().equals("-select branch-") && stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where branchid='"+stu.getBranchid()+"' and clglid='"+clglid+"' and status='active'");
            
            else if(stu.getCourseid().equals("-select course-") && stu.getBranchid().equals("-select branch-") && !stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where stuname like '%"+stu.getStuname()+"%'and clglid='"+clglid+"' and  status='active'");
            
            else if(stu.getCourseid().equals("-select course-") && stu.getBranchid().equals("-select branch-") && stu.getStuname().equals(""))
                rs = DAO.showAllRecord("select * from studentreg where clglid='"+clglid+"' and status='active'");
            
            else 
            	rs = DAO.showAllRecord("select * from studentreg where clglid='"+clglid+"' and status='active'");
            
            while(rs.next())
            {
       
            %>
            <tr>
               <td><%out.print(rs.getString(1)); %></td>
               <td><%out.print(rs.getString(2)); %></td>
               <td><%out.print(rs.getString(7)); %></td>
               <td><%out.print(rs.getString(8)); %></td>
               <td><%out.print(rs.getString(10)); %></td>
               <%
               out.print("<td><a href=collegeStudentDetail.jsp?stulid="+rs.getString(15)+" class=\"mainBtns\">Detail</a></td>");
               %>
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