<%@ page language="java" contentType="text/html"%>
<%@ page import="com.util.*" %>
<%@ page session="true" %>

<html>
  <head>
    <title>Students Records Uploading Form</title>
  </head>
  <body bgcolor="#E6FFFF">
    <jsp:useBean id="student" class="com.beans.upload.userInfo" scope="request"> 
      <jsp:setProperty name="student" property="*" />
</jsp:useBean>
<% if (student.isValid( )){ 
%>
 <jsp:forward page="getmarks.jsp" />  
 <%} %>
<div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div>

    <%-- Output list of values with invalid format, if any --%>
    <font color="red">
      <jsp:getProperty name="student" property="statusMsg" />
    </font>

    <%-- Output form with submitted valid values --%>
    
<form action="../upload/studentsInfobckup.jsp" method="post" >      
	<table>
          <tr>
          <td> First Name:<font color="#FF0000">*</font></td>
          <td><input type="text" name="pName_f" 
            value="<jsp:getProperty 
                     name="student"
                     property="pName_fFormatted" 
                   />">
          </td>
        </tr>
        <tr>
          <td>Last Name:<font color="#FF0000">*</font></td>
          <td><input type="text" name="pName_l" 
            value="<jsp:getProperty 
                     name="student" 
                     property="pName_lFormatted" 
                   />">
          </td>
        </tr>
         
<tr>
          <td>Birth Date:<font color="#FF0000">*</font></td>
          <td><input type="text" name="birthdate" 
            value="<jsp:getProperty 
                     name="student" 
                     property="birthdateFormatted" 
                   />">
          </td>
          <td>(Use format yyyy-mm-dd)</td>
        </tr> 



<tr>
          <td>Sex:<font color="#FF0000">*</font></td>
          <td>Male<input type="radio" name="sex" 
            value="M" >
                  <jsp:setProperty 
                     name="student" 
                     property="sex"
                     value="<%= student.getsex() %>"
                   />
          </td>
		<td>Female<input type="radio" name="sex" 
            value="F" >
                    <jsp:setProperty 
                     name="student" 
                     property="sex"
                     value="<%= student.getsex() %>"
                     />
                    
          </td>
         
</tr>
	  
               
	  <tr>
          <td>Email Address:</td>
          <td><input type="text" name="emailaddr" 
            value="<jsp:getProperty 
                     name="student" 
                     property="emailaddrFormatted" 
                   />">
          </td>
          
	<td>(Use format name@company.com)</td>
        </tr>
         
        <tr>
          <td>Father's Name:<font color="#FF0000">*</font></td>
          <td><input type="text" name="f_Name" 
            value="<jsp:getProperty 
                     name="student" 
                     property="f_NameFormatted" 
                   />">
          </td>
        </tr>
         
        <tr>
          <td>Mother's Name:<font color="#FF0000">*</font></td>
          <td><input type="text" name="m_Name" 
            value="<jsp:getProperty 
                     name="student" 
                     property="m_NameFormatted" 
                   />">
          </td>
        </tr>    
      
         <tr>
          <td>Address:<font color="#FF0000">*</font></td>
          <td><input type="text" name="address" 
            value="<jsp:getProperty 
                     name="student" 
                     property="addressFormatted" 
                   />">
          </td>
        </tr>    

        <tr>
          <td>State:<font color="#FF0000">*</font></td>
          <td><input type="text" name="state" 
            value="<jsp:getProperty 
                     name="student" 
                     property="stateFormatted" 
                   />">
          </td>
        </tr>    
        <tr>
                  
  <td> Grade <font color="#FF0000">*</font>
  <select name="grade" size="1">
  <%ciautility c1=new ciautility(null);
    String grades[]=c1.getGrades(""+session.getAttribute("OID"));
    for(int i=0; i<grades.length; i++)
    {%> 
     <option value="<%=grades[i]%>"><%=grades[i]%></option>
 <% }  
  %>
      </select></td>
   <jsp:setProperty 
                     name="student" 
                     property="grade"
                     value="<%= student.getgrade() %>"
                     />


  <td>    Roll No:<font color="#FF0000">*</font>
          <input type="text" name="rollno" 
            value="<jsp:getProperty 
                     name="student" 
                     property="rollnoFormatted" 
                   />"></td>
  
<td>    Year Of Passing <font color="#FF0000">*</font> 
      <select name="yearofpassing" size="1">
      <option value="2004">2004</option>
      <option value="2003">2003</option>
      <option value="2002">2002</option>
      <option value="2001">2001</option>
      <option value="2000">2000</option>
      <option value="1999">1999</option>
      <option value="1998">1998</option>
      <option value="1997">1997</option>
      <option value="1996">1996</option>
      <option value="1995">1995</option>
      <option value="1994">1994</option>
      <option value="1993">1993</option>
      <option value="1992">1992</option>
      <option value="1991">1991</option>
      <option value="1990">1990</option>
      <option value="1989">1989</option>
      <option value="1988">1988</option>
      <option value="1987">1987</option>
      <option value="1986">1986</option>
      <option value="1985">1985</option>
      <option value="1984">1984</option>
      <option value="1983">1983</option>
      <option value="1982">1982</option>
      <option value="1981">1981</option>
      <option value="1980">1980</option>
    </select></td>
<jsp:setProperty 
                     name="student" 
                     property="yearofpassing"
                     value="<%= student.getyearofpassing() %>"
                     />

        </tr>
<tr>    

<td colspan=2><input type="submit"></td>
</tr>   
</table>
    </form>
  </body>
</html>

