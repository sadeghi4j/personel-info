<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="per.*" %>
     
    <%
    String nameS=request.getParameter("name");
    String familyS=request.getParameter("family");
    String nationalNoS=request.getParameter("nationalNo");
    String userNameS=request.getParameter("userName");
    String passwordS=request.getParameter("password");
    String fldDescS=request.getParameter("fldDesc");
    PersonInfo personinfo=new PersonInfo(nameS,familyS,nationalNoS,userNameS,passwordS,fldDescS);
    if ((nameS!=null)&&(!nameS.equals(""))&&(familyS!=null)&&(!familyS.equals(""))&&(nationalNoS!=null)&&(!nationalNoS.equals(""))&&(userNameS!=null)&&(!userNameS.equals(""))&&(passwordS!=null)&&(!passwordS.equals(""))&&(fldDescS!=null)&&(!fldDescS.equals(""))){
    	PersonDao handler=new PersonDao();
    	handler.insertPerInfo(personinfo);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ورود اطلاعات افراد </title>
</head>
<body>
<table border="2" width="100%">
 <tr>
       <td width="50">&nbsp;</td> .
   </tr>
   <tr>
   
  
   <td align="center" >
   <h1>اطلاعات فردی که ثبت شد : </h1>
   <strong>Name : </strong><%=nameS %></br>
   <strong>Family : </strong><%=familyS %></br>
   <strong>nationalNo : </strong><%=nationalNoS %></br>
   <strong>userName : </strong><%=userNameS %></br>
   <strong>password : </strong><%=passwordS %></br>
   <strong>fldDesc: </strong><%=fldDescS %>
   <center>
   <a href="insertPerInfo.jsp">!ورود اطلاعات فرد دیگر </a></br>
 <a href="ViewAllPerInfo.jsp">!دیدن تمام اطلاعات افراد  </a>
</center>
   </td>
   </tr>
</table>
<%}else{%>
<script type="text/javascript">
alert("اطلاعات ثبت نشد لطفا تمام فیلدها را کامل پر کنید !");
window.location.href='insertPerInfo.jsp';
</script>
<%}%>
</center>
</h1>
</b>

</body>

</html>

