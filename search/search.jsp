<%@ page language="java" contentType="text/html"%>
<%@ page import="com.util.*" %>
<%@ page session="true" %>

<jsp:useBean id="student" class="com.beans.upload.userInfo" scope="request"> 
      <jsp:setProperty name="student" property="*" />
</jsp:useBean>
<html>
 <head>
 <script type="text/javascript">
function actionsearch()
{document.finalform.action.value="search";
 document.finalform.RollNo.value=document.searchForm.RollNo.value;
 document.finalform.YearOfPassing.value=document.searchForm.yrOfPass.value;
 document.finalform.Grade.value=document.searchForm.grade.value;
 document.finalform.Oid.value=document.searchForm.Organisation.value;
 document.finalform.submit();
}

function actionsearchall()
{document.finalform.action.value="searchall";
 document.finalform.YearOfPassing.value=document.searchForm.yrOfPass.value;
 document.finalform.Grade.value=document.searchForm.grade.value;
 document.finalform.Oid.value=document.searchForm.Organisation.value; 
 document.finalform.submit();
}
</script>
   <title>
      Search Certificates
   </title>
 </head>
<%if(!session.getAttribute("isValid").equals("OK")) { %> <font color="#FEB938"><div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div></font>
<%}%>
 <body bgcolor="#FFF0E1">
<div align="center"><u><strong><h1></h1>
</strong></u>
  <font color="#FF0000"><h1>Search For Certificates</h1></font>
  
  <form name="searchForm" method="post" action="search.jsp">
    <div align="center">
      <table>
        <tr><td>Enter the following information: </td></tr>
        <tr><td>Student's Roll No: </td><td>
        <input type="text" name="RollNo"></td> 
         </tr>
               
     
      <tr><td>Institute: 
       </td><td><select name="Organisation" size="1" onClick="submit()">
       <%ciautility c1=new ciautility(null);
        String Orgs[]=c1.getOrgs();
        for(int i=0; i<Orgs.length/2; i++)
        {System.out.println( request.getParameter("Organisation")!=null && 
        (request.getParameter("Organisation").trim()).equals( Orgs[2*i+1]) );
          if(request.getParameter("Organisation")!=null ) System.out.println(request.getParameter("Organisation").trim()+" "+Orgs[2*i+1]);
       %>
         <option name="<%=Orgs[2*i]%>"  value="<%=Orgs[2*i+1]%>" 
       <% if(request.getParameter("Organisation")!=null && 
           (request.getParameter("Organisation")).equals(Orgs[2*i+1])) {%> selected <%}%>
           ><%=Orgs[2*i]%>
        </option>
         <% }
          %>
       </select></td>
 <% if(request.getParameter("Organisation")!=null)
 {
    for(int i=0;i<15;i++)
    System.out.println("\n"+request.getParameter("Organisation")); %>
 
 
 <td>Grade: </td> 
 <td><select name="grade" size="1">
  <% String grades[]=c1.getGrades(request.getParameter("Organisation"));
    for(int i=0; i<grades.length; i++)
    {%> 
     <option value="<%=grades[i]%>"><%=grades[i]%></option>
 <% }    
 %>
</select>
<%}%>
 <jsp:setProperty    name="student" 
                     property="grade"
                     value="<%= student.getgrade() %>"
                     />  
  </td></tr>
  
 <tr><td>Year Of Passing: </td> 
  <td><select name="yrOfPass" size="1">
   <% for(int i=2005;i>1950;i--)
    {%>
     <option value="<%=i%>"><%=i%></option>
    <%}
    %>
   </select> 
 </td></tr>
 </table>
 </div>
 </form>
 <form name ="finalform" action="showres.jsp" method="post">
  <p align="center">
        <input type="hidden" name="action" value="null" >
        <input type="hidden" name="Oid" value="null" >
        <input type="hidden" name="Grade" value="null" >
        <input type="hidden" name="YearOfPassing" value="null" >
        <input type="hidden" name="RollNo" value="null" >
        <input type="button" name="search" value="Search Certificate" onclick="actionsearch()">        
        <input name="Reset" type="reset" id="Reset" value="Reset">
        <input type="button" name="Searchall" value="Search All Certificates" onclick="actionsearchall()">

      </p>
    </div>
  </form>
  <p align="left">&nbsp;</p>
</div>
  
 
     