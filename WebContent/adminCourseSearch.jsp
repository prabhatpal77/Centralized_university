<%@page import="bs.model.course"%>
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

function validate(){
	if ((document.example2.uid.value=="")){
        alert("Search Student Aadhar Card No.!")
        return false
	}
	if ((document.example2.clgid.value=="")){
        alert("Search Studaaent Aadhar Card No.!")
        return false
	}
	if ((document.example2.coursename.value=="")){
        alert("Enter Course Name!")
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
</head>
<body>
   <center>
      <form name="example2" onsubmit="return validate()"> 
         <table border="1" cellpadding="10" style="background-color:#caf5ff;">
         <caption><h3>Search Course</h3></caption>
            <tr>
              <td><select name="uid">
               <option value="-select uni-">-Select University-</option>
               <%
                 ResultSet rs = DAO.showAllRecord("select * from universityreg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(6)+">"+rs.getString(2)+"</option>");
               }
               rs.close();
               %>
             </select></td></tr>
              <tr><td><select name="clgid">
               <option value="-select clgid-">-Select College-</option>
               <%
                 rs = DAO.showAllRecord("select * from collegereg");
               
               while(rs.next())
               {
            	   out.print("<option value="+rs.getString(4)+">"+rs.getString(2)+"</option>");
               }
               
               %>
             </select></td></tr>
              <tr><td><input type="text" name="coursename" onkeyup="AllowAlphabet()" placeholder="Course Name"/><font color="red" size="4">*</font></td>
            </tr>
            <tr>
               <td><input type="submit" id="sign_user" onclick="ValidateNo();" class="mainBtn" value="Search"/></td>
            </tr>
         </table>
         </form>
         <%
           if(request.getParameter("search") != null)
           {
        	   
             course crs = new course();
             
        	   crs.setUlid(request.getParameter("uid"));
        	   crs.setClg(request.getParameter("clgid"));
        	   crs.setCoursename(request.getParameter("coursename"));
        	   
        	   //out.print(crs.getUlid()+crs.getClg()+crs.getCoursename());
           
         %>
         <table border="1" cellpadding="10" style="background-color:#caf5ff;">
         <caption><h3>Display Course</h3></caption>
            <tr>
               <th>Course ID</th>
               <th>Course Name</th>
               <th>Course Icon</th>
               <th>Course Desc</th>
               <th>Branch</th>
            </tr>
            <%
            try{
            if(!crs.getUlid().equals("-select uni-") && !crs.getClg().equals("-select clgid-") && !crs.getCoursename().equals(""))
              rs = DAO.showAllRecord("select * from coursereg where uid='"+crs.getUlid()+"' and clgid='"+crs.getClg()+"' and coursename like '%"+crs.getCoursename()+"%'");
            
            else if(!crs.getUlid().equals("-select uni-") && !crs.getClg().equals("-select clgid-") && crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where uid='"+crs.getUlid()+"' and clgid='"+crs.getClg()+"' ");
              
            else if(!crs.getUlid().equals("-select uni-") && crs.getClg().equals("-select clgid-") && !crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where uid='"+crs.getUlid()+"'and coursename like '%"+crs.getCoursename()+"%'");
              
            else if(!crs.getUlid().equals("-select uni-") && crs.getClg().equals("-select clgid-") && crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where uid='"+crs.getUlid()+"' ");
              
            else if(crs.getUlid().equals("-select uni-") && !crs.getClg().equals("-select clgid-") && !crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where clgid='"+crs.getClg()+"' and coursename like '%"+crs.getCoursename()+"%'");
              
            else if(crs.getUlid().equals("-select uni-") && !crs.getClg().equals("-select clgid-") && crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where clgid='"+crs.getClg()+"' ");
              
            else if(crs.getUlid().equals("-select uni-") && crs.getClg().equals("-select clgid-") && !crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg where coursename like '%"+crs.getCoursename()+"%'");
              
            else if(crs.getUlid().equals("-select uni-") && crs.getClg().equals("-select clgid-") && crs.getCoursename().equals(""))
                rs = DAO.showAllRecord("select * from coursereg ");
              
            else
            	rs = DAO.showAllRecord("select * from coursereg ");
            }
            catch(Exception ex)
            {
            	out.print("Error   :     "+ex);
            }
           // out.print(rs);
            while(rs.next())
            {
               %>
               <tr>
                 <td><%out.print(rs.getString(1)); %></td>
                 <td><%out.print(rs.getString(2)); %></td>
                 
                 <td><img src="adminimg/<%out.print(rs.getString(3)); %>" height="100" width="100"/></td>
                 <td><%out.print(rs.getString(4)); %></td>
                 <%
                    out.print("<td><a href=adminBranchSearch.jsp?courseid="+rs.getString(1)+" class=\"mainBtns\">Branch</a></td>");
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