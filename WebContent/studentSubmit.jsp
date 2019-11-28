<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%String clglid = session.getValue("clglid").toString(); %>
</head>
<body>
   <%
     Student stu = new Student();
   
   stu.setStuname(request.getParameter("stuname"));
   stu.setStufname(request.getParameter("stufname"));
   stu.setUid(request.getParameter("uid"));
   stu.setCourseid(request.getParameter("courseid"));
   stu.setBranchid(request.getParameter("branchid"));
   stu.setEmailid(request.getParameter("emailid"));
   stu.setMno(request.getParameter("mno"));
   stu.setDob(request.getParameter("dob"));
   stu.setAdd(request.getParameter("address"));
   stu.setSid(request.getParameter("sid"));
   stu.setCiid(request.getParameter("ciid"));
   stu.setPcode(request.getParameter("pcode"));
   stu.setPhoto(request.getParameter("photo"));
   stu.setId(request.getParameter("id"));
   stu.setRollno(request.getParameter("rollno"));
   stu.setGen(request.getParameter("gen"));
   stu.setAadhar(request.getParameter("aadhar"));
   stu.setBatch(request.getParameter("batch"));
   
   String stulid = request.getParameter("emailid");
   String status = "active";
   
   int min=100,max=999;
   Random ran = new Random();
   int total = (ran.nextInt() + min) + max;
   
   String stupwd = Integer.toString(total);

   String aadhar = "";
   ResultSet rs = DAO.showAllRecord("select aadhar from studentreg");
   
   if(rs.next())
   {
	   do{
	   aadhar = rs.getString(1);
   
   
   if(!stu.getAadhar().equals(aadhar))
   {
       String q = DAO.addNewRecord("insert into studentreg(stuname,stufname,uid,courseid,branchid,emailid,mno,dob,address,sid,ciid,pcode,photo,stulid,stupwd,status,rollno,clglid,gender,aadhar,batch) values('"+stu.getStuname()+"','"+stu.getStufname()+"','"+stu.getUid()+"','"+stu.getCourseid()+"','"+stu.getBranchid()+"','"+stu.getEmailid()+"','"+stu.getMno()+"','"+stu.getDob()+"','"+stu.getAdd()+"','"+stu.getSid()+"','"+stu.getCiid()+"','"+stu.getPcode()+"','"+stu.getPhoto()+"','"+stu.getEmailid()+"','"+stupwd+"','"+status+"','"+stu.getRollno()+"','"+clglid+"','"+stu.getGen()+"','"+stu.getAadhar()+"','"+stu.getBatch()+"')");
   
   if(q.equals("yes"))
	   out.print("<font color=Green>Record Submitted..........</font>");
   else
	   out.print("<font color=Red>Record not submitted.......</font>");
   }
   else
   {
	   out.print("Student Already Registred in another college.........");
   }
	   }while(rs.next());
   }
   %>
</body>
</html>