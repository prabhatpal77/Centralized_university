<%@page import="bs.dao.DAO"%>
<%@page import="bs.model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
String btn = request.getParameter("button");
%>
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
stu.setAadhar(request.getParameter("aadhar"));
stu.setGen(request.getParameter("gen"));
stu.setBatch(request.getParameter("batch"));

String q = "";
String stulid = request.getParameter("emailid");
if(btn.equals("update"))
{
	if(stu.getPhoto().equals(""))
	{
        q = DAO.addNewRecord("update studentreg set stuname='"+stu.getStuname()+"',stufname='"+stu.getStufname()+"',uid='"+stu.getUid()+"',courseid='"+stu.getCourseid()+"',branchid='"+stu.getBranchid()+"',emailid='"+stu.getEmailid()+"',mno='"+stu.getMno()+"',dob='"+stu.getDob()+"',address='"+stu.getAdd()+"',sid='"+stu.getSid()+"',ciid='"+stu.getCiid()+"',pcode='"+stu.getPcode()+"',rollno='"+stu.getRollno()+"',gen='"+stu.getGen()+"',aadhar='"+stu.getAadhar()+"',batch='"+stu.getBatch()+"' where stulid='"+stu.getEmailid()+"'");
	}
	else
	{
		q = DAO.addNewRecord("update studentreg set stuname='"+stu.getStuname()+"',stufname='"+stu.getStufname()+"',uid='"+stu.getUid()+"',courseid='"+stu.getCourseid()+"',branchid='"+stu.getBranchid()+"',emailid='"+stu.getEmailid()+"',mno='"+stu.getMno()+"',dob='"+stu.getDob()+"',address='"+stu.getAdd()+"',sid='"+stu.getSid()+"',ciid='"+stu.getCiid()+"',pcode='"+stu.getPcode()+"',photo='"+stu.getPhoto()+"',rollno='"+stu.getRollno()+"',gen='"+stu.getGen()+"',aadhar='"+stu.getAadhar()+"',batch='"+stu.getBatch()+"' where stulid='"+stu.getEmailid()+"'");
    }
	
	if(q.equals("yes"))
		   out.print("Updated..........");
	else
		   out.print("Not Updated.......");
}
else
{
	q = DAO.addNewRecord("update studentreg set status='Not Active' where stulid='"+stu.getEmailid()+"'");

	if(q.equals("yes"))
	     out.print("Deleted.....");
	else
		out.print("Not Deleted.........");
}

%>
</body>
</html>