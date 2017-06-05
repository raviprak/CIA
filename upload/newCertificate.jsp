<%@ page language="java" contentType="text/html"%>

<html>
  <head>
    <title>Upload New Certificate</title>
  </head>
  <body bgcolor="#E8FAFD">
  <div align="center"> <b><h3><%=session.getAttribute("ONAME")%> </h3></b></div><br>
  <form action="../upload/certiUploading.jsp" method="post" >
  <B><font color="#FF0000"><h2 align="center">Upload the New Certificate</h2></font></B><br>
         <table border="1">
          <tr>
          <td colspan="1" rowspan="3"><B> Enter the Grade:</B><font color="#FF0000"><input type="text" name="grade"></b><td>
          <td><B> Enter number of Subjects</B><font color="#FF0000"><input type="text" name="subject"></b><td>
                     
          </tr></table><br><br>
          <div align="center"> <input type="submit" value="Add"> </div>
          
      </form>
   </body>
</html>