<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="per.*" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
PersonDao handler=new PersonDao();
PersonInfo[] personinfo=handler.getAllPerInfo();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>نمایش اطلاعات افراد</title>
    <style type="text/css">
        body{
            font-family: tahoma;
            background-color:#ffffff;
        }
        .a {
            color: #000;
            text-decoration:none;

        }
        a:hover
        {
            color:darkred;
            text-decoration: none;
        }
        input
        {
            font-family: tahoma;
        }
        select
        {
            font-family: tahoma;
        }

    </style>
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
                <a class="a" href="editPerInfo.jsp?id=<%=personinfo[i].getId()%>">Edit</a>
                </td>
                <td width="10%" align="center">
                <a class="a" href="removePerInfo.jsp?id=<%=personinfo[i].getId()%>" >Remove</a>
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
 <a class="a" href="insertPerInfo.jsp" >ثبت کاربر جدید </a>
 </br></br>
  <a class="a" href="searchPerInfo.jsp" >جستجوی کاربران </a>
 </center>
</h1>
</b>
</body>
</html>