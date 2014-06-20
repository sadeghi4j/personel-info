<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="per.*" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String id=request.getParameter("id");
String okSubmit=request.getParameter("submit");


if ((okSubmit!=null)&&(id!=null)){
	PersonDao dao=new PersonDao();
	dao.removePerInfo(id);

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>پاک کردن اطلاعات یک فرد </title>
</head>
<body>
<center>
<b>
<i>
<h1>
اطلاعات شخص مربوطه حذف شد .</br>
 <a href="ViewAllPerInfo.jsp">!دیدن تمام اطلاعات افراد  </a>
 </h1>
 </i>
</b>
</center>
</body>
</html>
<%}else{
	response.sendRedirect("ViewAllPerInfo.jsp");
} %>