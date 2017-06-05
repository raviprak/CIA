<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>
<html>
  <head>
    <title>Students Records Uploading Form</title>
  </head>
  <body bgcolor="#E6FFFF">
    <jsp:useBean id="student" class="com.beans.upload.userInfo" scope="request"> 
      <jsp:setProperty name="student" property="*" />
</jsp:useBean>

    <%-- Output form with submitted valid values --%>
   
   <div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div>

<B><font color="#FF0000"><h2 align="center">Update Marks Of The Student</h2></font></B>
         <table>
          <tr>
          <td><B> First Name:</B><font color="#FF0000"> <jsp:getProperty 
                     name="student"
                     property="pName_fFormatted"/></font>
          </td>
          <td><b>   Last Name:</b><font color="#FF0000"> <jsp:getProperty 
                     name="student" 
                     property="pName_lFormatted"/> </font>
          </td>
        </tr>
         
        <tr>
          <td><b>Birth Date:</b><font color="#FF0000"><jsp:getProperty 
                     name="student" 
                     property="birthdateFormatted"/> </font>
          </td>
         </tr> 



<tr>
          <td><b>Sex:</b><font color="#FF0000">${param.sex}
                   </font>
          </td>
		
         
</tr>
	  
         
	  <tr>
          <td><b>Email Address:</b><font color="#FF0000">  <jsp:getProperty 
                     name="student" 
                     property="emailaddrFormatted" 
                   /></font>
          </td>
          
	
         
        <tr>
          <td><b>Father's Name:</b><font color="#FF0000">  <jsp:getProperty 
                     name="student" 
                     property="f_NameFormatted" 
                   /></font></td>
          </tr>
         
        <tr>
          
         <td><b>Mother's Name:</b><font color="#FF0000"><jsp:getProperty 
                     name="student" 
                     property="m_NameFormatted" 
                   /></font></td>
          </tr>    
      
         <tr>
          <td><b>Address:</b><font color="#FF0000"><jsp:getProperty 
                     name="student" 
                     property="addressFormatted" 
                   /></font></td>
          
        </tr>    

        <tr>
          <td><b>State:</b><font color="#FF0000"> <jsp:getProperty 
                     name="student" 
                     property="stateFormatted" 
                   /></font></td>
          
        </tr>    
        <tr>
                  
  <td><b>Grade </b><font color="#FF0000">${param.grade}</font>
  
  <td><b>Roll No:</b><font color="#FF0000"> <jsp:getProperty 
                     name="student" 
                     property="rollnoFormatted"/></font>
          
  <td>Year Of Passing <font color="#FF0000">${param.yearofpassing}</font> 
   </td>
  </tr>
  
</table>

<font color="#C0C0C0">Please Upload the photograph</font>
<br><B><h3 align="center"><font color="#FEB938">Enter the Marks Of Student In the Respective Fields </font></h3></B>

<form action="fillmarks.jsp" method="post" >      
<div align="center">
<table border="1">
<%ciautility c1=new ciautility(null);
  String subs[]=c1.getsubs(""+session.getAttribute("OID"), ""+request.getParameter("grade"));
  //subs[0] now contains "SI" and subsequently the subject names
  for(int i=1; i<subs.length; i++)
  {%>
  <tr><td> Subject <%=subs[i]%> : </td> <td> <input type="text" name="mark<%=i%>"> </td></tr>
<%}
%>
</table>
</div>

<input type="hidden" name="noofsubs" value=<%=(subs.length-1)%> >
<input type="hidden" name="pName_f" value="<jsp:getProperty name="student" property="pName_fFormatted"/>">
<input type="hidden" name="pName_l" value="<jsp:getProperty name="student" property="pName_lFormatted"/>">
<input type="hidden" name="birthdate" value="<jsp:getProperty name="student" property="birthdateFormatted"/>">
<input type="hidden" name="sex" value="${param.sex}">
<input type="hidden" name="emailaddr" value="<jsp:getProperty name="student" property="emailaddrFormatted"/>"> 
<input type="hidden" name="f_Name" value="<jsp:getProperty name="student" property="f_NameFormatted"/>">
<input type="hidden" name="m_Name" value="<jsp:getProperty name="student" property="m_NameFormatted"/>">
<input type="hidden" name="address" value="<jsp:getProperty name="student" property="addressFormatted"/>">
<input type="hidden" name="state" value="<jsp:getProperty name="student" property="stateFormatted"/>">
<input type="hidden" name="grade" value="<%=student.getgrade()%>">
<input type="hidden" name="rollno" value="<jsp:getProperty name="student" property="rollnoFormatted"/>">
<input type="hidden" name="yearofpassing" value="<%= student.getyearofpassing() %>">

<div align="center"> <input type="submit" value="Add"> </div>

</form>
  </body>
</html>