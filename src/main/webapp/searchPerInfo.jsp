<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="per.*" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>جستجو</title>
</head>
<body>
<form action="searchPerInfoAction.jsp" method="post">
<center>
<table border="2">
<tr>
<td>نام</td>
<td><input type="text" name="name" size="50"></td>
</tr>
<tr>
<td>نام خانوادگی </td>
<td><input type="text" name="family" size="50"></td>
</tr>
<tr>
<td>شماره ملی</td>
<td><input type="text" name="nationalNo" size="50"></td>
</tr>
<tr>
<td>نام کاربری</td>
<td><input type="text" name="userName" size="50"></td>
</tr>
<tr>
<td>کلمه عبور</td>
<td><input type="text" name="password" size="50"></td>
</tr>
<tr>
<td>توضیحات</td>
<td><textarea rows="5" cols="30" name="fldDesc">
</textarea></td>
</tr>
<tr>
<td align="center"><input type="submit" name="submit" value="جستجو "></td>
</tr>
</table>
</br>
 <h1><b><a href="ViewAllPerInfo.jsp">!دیدن تمام اطلاعات افراد</a></b></h1>
</br>
  <h1><b><a href="insertPerInfo.jsp">ثبت کاربر جدید</a></b></h1>
</br>
    <h1><b><a href="searchPerInfo.jsp" >جستجوی کاربران </a></b></h1>
 </center>
</form>
</body>
</html>