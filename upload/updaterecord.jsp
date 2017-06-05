<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>

<jsp:useBean id="student" class="com.beans.upload.userInfo" scope="request" >
 <jsp:setProperty name="student" property="*" />
</jsp:useBean>

 <% String arr[]= {"PERSONAL_INFO","PNAME",student.getpName_fFormatted()+" "+student.getpName_lFormatted(),"FNAME",student.getf_NameFormatted(),"PLACE",student.getstateFormatted(),"MNAME",student.getm_NameFormatted()};
    ciautility chk=new ciautility(arr);
    String resultpInfo=chk.exists();  //checking if person exists
    if(resultpInfo==null)
     student.writeToDB2(""+session.getAttribute("OID"));      
    else student.writeToDB2alt(resultpInfo, ""+session.getAttribute("OID"));
%>    
 
 

