<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>
<font color="#FEB938"><div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div></font>

<jsp:useBean id="student" class="com.beans.upload.userInfo" scope="request"> 
     <jsp:setProperty name="student" property="*" />
</jsp:useBean>

<%String mrks[]=new String[Integer.parseInt(request.getParameter("noofsubs"))];
  for(int i=0; i<mrks.length; i++)
  {mrks[i]=request.getParameter("mark"+(i+1));
  }
  student.getMarks(mrks);
  student.setgrade(request.getParameter("grade"));
  student.writeToDB2(""+session.getAttribute("OID"));

%>

<html>
<body bgcolor="#E6FFFF" text="#008000">

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center"><font face="Comic Sans MS" size="4" color="#FF0000"><b>Congratulations,<%=session.getAttribute("Username")</b></font><br>
<b><br>
The student's record has successfully been added to the database !!!</b></p>
<p align="center"><br>
</p>
<p align="center">&nbsp;</p>

<div align="center">
<font color="#FEB938">
<table><tr><td><a href="../login/welcome.jsp"> Home Page </a></td><td>&nbsp;</td>
		   <td><a href="../upload/studentsInfobckup.jsp"> Add Another Record </a></td><td>&nbsp;</td>
		   <td><a href="../search/search.jsp"> Search Database </a> </td>
	   </tr>
</table>
</font>
</div>


</body>

</html>
