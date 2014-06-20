<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="per.*" %>
<%
String id=request.getParameter("id");
if (id==null){
	response.sendRedirect("ViewAllPerInfo.jsp");
	
}else{PersonDao dao=new PersonDao();
PersonInfo personinfo=dao.getPerInfo(id);
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>edit</title>
</head>
<body>
<table width="100%" border="2">
<tr>
<td><form action="editPerInfoAction.jsp" method="post">
<table width="271" border="0">
<tr>
<td>name</td>
<td><input type="text" name="name" value="<%=personinfo.getName()%>"></td>
</tr>
<tr>
<td>family</td>
<td><input type="text" name="family" value="<%=personinfo.getFamily()%>"></td>
</tr>
<tr>
<td>nationalNo</td>
<td><input type="text" name="nationalNo" value="<%=personinfo.getNationalNo()%>"></td>
</tr>
<tr>
<td>userName</td>
<td><input type="text" name="userName" value="<%=personinfo.getUserName()%>"></td>
</tr>
<tr>
<td>password</td>
<td><input type="text" name="password" value="<%=personinfo.getPassword()%>"></td>
</tr>
<tr>
<td>fldDesc</td>
<td><input type="text" name="fldDesc" value="<%=personinfo.getFldDesc()%>"></td>
</tr>
<tr>

<td><input type="hidden" name="id" value="<%=personinfo.getId()%>"></td>
</tr>
<td><input type="submit" name="submit" value="Update"></td>
<td><input type="submit" name="cancel" value="Cancel"></td>

</table>
</form>
</td>
</tr>
</table>
</body>
</html>
<%}%>