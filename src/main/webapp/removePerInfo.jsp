<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="per.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String id=request.getParameter("id");
if (id==null){
	response.sendRedirect("ViewAllPerInfo.jsp");
	
}else{PersonDao dao=new PersonDao();
PersonInfo personinfo=dao.getPerInfo(id);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<i>
<title>حذف اطلاعات یک فرد </title>
</head>
<body>
<table border="1">
<tr>
<h2 align="center">آیا شما برای پاک کردن اطلاعات این فرد مطمئنید؟</h2>

<center>
   <strong>نام  : </strong><%=personinfo.getName() %></br>
   <strong>نام خانوادگی  : </strong><%=personinfo.getFamily() %></br>
   <strong>شماره ملی : </strong><%=personinfo.getNationalNo() %></br>
   <strong>نام کاربری : </strong><%=personinfo.getUserName()%></br>
   <strong>کلمه عبور : </strong><%=personinfo.getPassword() %></br>
   <strong>توضیحات: </strong><%=personinfo.getFldDesc()%></br>
   <form action="removePerInfoAction.jsp" method="post">
   <input type="hidden" name="id" value="<%=personinfo.getId() %>">
   <input type="submit" name="submit" value="Ok">
    <input type="submit" name="cancel" value="Cancel">
   </form>
  </center>
</i>
</tr>
</table>
</body>
</html>
<%}%>