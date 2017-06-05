<%@ page language="java" contentType="text/html" %>

<jsp:useBean id="Org" class="com.beans.register.RegOrgBean" scope="request" >
 <jsp:setProperty name="Org" property="*" />
</jsp:useBean>

<% if ( Org.getisValid() ) 
   {Org.writeToDB2(); %>
    <jsp:forward page="registered.jsp" />

<% }
   else
   { %>
    <jsp:forward page="registration.jsp" />    
<% } %>