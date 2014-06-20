<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="per.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%
    String nameS=request.getParameter("name");
    String familyS=request.getParameter("family");
    String nationalNoS=request.getParameter("nationalNo");
    String userNameS=request.getParameter("userName");
    String passwordS=request.getParameter("password");
    String fldDescS=request.getParameter("fldDesc");
  PersonDao dao=new PersonDao();
    PersonInfo[] personinfo=dao.searchPerInfo(nameS,familyS,nationalNoS,userNameS,passwordS,fldDescS);
  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>نتیجه جستجو</title>
</head>
<body>
<table border="2" width="100%" >
   <tr align="center" bgcolor="white"   >
    <td width="50">نمایش کلیه اطلاعات افراد </td>
   </tr>
   <tr>
   
   
   <td>
        <table width="100%" corder="2">
               <tr>
                <th width="15%"> Name</th>
                <th width="15%"> Family</th>
                <th width="15%"> NationalNom</th>
                <th width="15%"> User Name</th>
                <th width="10%"> Password</th>
                <th width="10%"> Fls Desk</th>
                <th width="10%"> Edit</th>
                <th width="10%">Remove</th>
               </tr>
               <%for (int i=0;i<personinfo.length;i++){ %>
               <tr>
                <td width="15%" align="center"><%=personinfo[i].getName()%></td>
                <td width="15%" align="center"><%=personinfo[i].getFamily()%></td>
                <td width="15%" align="center"><%=personinfo[i].getNationalNo()%></td>
                <td width="15%" align="center"><%=personinfo[i].getUserName()%></td>
                <td width="10%" align="center"><%=personinfo[i].getPassword()%></td>
                <td width="10%" align="center"><%=personinfo[i].getFldDesc()%></td>
                <td width="10%" align="center">
                <a href="editPerInfo.jsp?id=<%=personinfo[i].getId()%>">Edit</a>
                </td>
                <td width="10%" align="center">
                <a href="removePerInfo.jsp?id=<%=personinfo[i].getId()%>" >Remove</a>
                </td>
               </tr>
               <%}%>
        </table>
   </td>
   </tr>
</table>
<b>
<h1>
<center>
</br>
 <a href="insertPerInfo.jsp" >ثبت کاربر جدید </a>
 </br></br>
  <a href="searchPerInfo.jsp" >جستجوی کاربران </a>
 </center>
</h1>
</b>
</body>
</html>