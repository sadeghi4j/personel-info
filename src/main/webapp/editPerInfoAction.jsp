<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="per.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String name=request.getParameter("name");
String family=request.getParameter("family");
String nationalNo=request.getParameter("nationalNo");
String userName=request.getParameter("userName");
String password=request.getParameter("password");
String fldDesc=request.getParameter("fldDesc");
String i=request.getParameter("id");
int id=Integer.parseInt(i);
String okSubmit=request.getParameter("submit");
if((okSubmit!=null)&&(id!=0)){
	PersonInfo personinfo=new PersonInfo(id,name,family,nationalNo,userName,password,fldDesc);
	PersonDao dao=new PersonDao();
	dao.updatePerInfo(personinfo);

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2" width="100%">
 <tr>
       <td width="50">&nbsp;</td> .
   </tr>
   <tr>
   
  
   <td>
   <h1>اطلاعات فردی که ثبت شد : </h1>
   <strong>Name : </strong><%=name %></br>
   <strong>Family : </strong><%=family %></br>
   <strong>nationalNo : </strong><%=nationalNo %></br>
   <strong>userName : </strong><%=userName %></br>
   <strong>password : </strong><%=password %></br>
   <strong>fldDesc: </strong><%=fldDesc %></br>
   <a href="ViewAllPerInfo.jsp">!دیدن تمام اطلاعات افراد  </a>
   </td>
   </tr>
</table>
</body>
</html>
<%}else {
	response.sendRedirect("ViewAllPerInfo.jsp");
}
%>