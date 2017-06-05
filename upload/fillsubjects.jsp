<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>

<jsp:useBean id="upload" class="com.beans.upload.uploadCerti" scope="request" >
 <jsp:setProperty name="upload" property="*" />
</jsp:useBean>

<%  System.out.println(request.getParameter("nosub"));
    String subjects[]=new String[Integer.parseInt(request.getParameter("nosub"))];
    for(int i=0; i<Integer.parseInt(request.getParameter("nosub")); i++)
     subjects[i]=request.getParameter("subject"+i);
    upload.writeToDB2(""+session.getAttribute("OID"),""+request.getParameter("grade"),subjects);      
 %>

<html>
<body bgcolor="#E6FFFF" text="#008000">
<font color="#FEB938"><div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div></font>

<p align="center"><font face="Comic Sans MS" size="4" color="#FF0000"><b>Congratulations <%=session.getAttribute("Username")%>,</b></font><br>
<b><br>
Your Certificate Template is Ready to be used for use in the students records.</b></p>
<p align="center">This feature of CIA helps you to considerably reduce database space. <br>
&nbsp;by reusing the same back ground image again and again. </p>
<div align="center">
<font color="#FEB938">
<table><tr><td><a href="../login/welcome.jsp"> Home Page </a></td><td>&nbsp;</td>
		   <td><a href="../upload/studentsInfobckup.jsp"> Upload Student Records </a></td>
	   </tr>
</table>
</font>
</div>
</body>

</html>