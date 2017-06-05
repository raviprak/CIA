<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>

<html>
<body bgcolor="#E8FAFD">
<form action="fillsubjects.jsp" method="post">
<input type="hidden" name="nosub" value=<%=request.getParameter("subject")%> >
<input type="hidden" name="grade" value=<%=request.getParameter("grade")%> >

<div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div>
<B><font color="#FF0000"><h2 align="center">Enter Subject Names </h2></font></B>
<div align="center">
<table border="1">
<%  String str[]={"O_CERTI_ID" , "OID" , ""+session.getAttribute("OID") , "GRADE" , ""+request.getParameter("grade") };
	ciautility chk=new ciautility(str);
    String resultpInfo=chk.exists();  //checking if person exists
    if(resultpInfo==null) 
   {
    //Prints onto page-- takes the subject names 2 b entered in the table
    for(int i=0;i<Integer.parseInt(request.getParameter("subject"));i++)
    { 
%>	 <tr> <td align="center">Subject Name <i> <%=i+1%> </i>: <input type="text" name=subject<%=i%> size=12> </td> </tr>
<%  }   
%>
    <tr><td align="center"> <input type="Submit" value="Add"> <td> </tr>
    </table>
    </div>
	 </form>

  <font color="#C0C0C0"> <u> Upload the Background</u></font>
  
<%
  }
  
  else 
  {%>
    <jsp:forward page="errorUploading.jsp" />    
<%}%>

</body>
</html>