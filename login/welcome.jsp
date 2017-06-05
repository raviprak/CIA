<%@ page language="java" contentType="text/html"%>
<%@ page session="true" %>
<%@ page import="com.util.*" %>
<html>
  <head>
  <title>Welcome To CIA</title>
 
 <body bgcolor="#E8FAFD" text="#800000">

<p><h3>Welcome <%=session.getAttribute("Username")%>, <b> <%=session.getAttribute("ONAME")%> </b> </h3>
</p>
<ul>
  <li><a href="../upload/newCertificate.jsp"><font face="Comic Sans MS" size="3" color="#008080"><b>Create
    New Certificate </b></font></a> <br>
    &nbsp;&nbsp;&nbsp;&nbsp; Allows you to <b><i>dynamically</i></b> create a
    new certificate from scratch.
    <ul>
      <li>Create a new grade.</li>
      <li>Create new subjects.<br>
      </li>
    </ul>
  </li>
  <li><a href="../upload/studentsInfobckup.jsp"><font face="Comic Sans MS" size="3" color="#008080"><b>Upload
    Students Records</b></font><br>
    </a>&nbsp;&nbsp;&nbsp;&nbsp; Upload the students marks.
    <ul>
      <li>Choose certificate type and enter marks.<br>
      </li>
    </ul>
  </li>
  <li><a href="../search/search.jsp"><font face="Comic Sans MS" size="3" color="#008080"><b>Search
    Records</b></font><br>
    </a>&nbsp;&nbsp;&nbsp; Searches the database for the students records.
    <ul>
      <li>Search own database.</li>
      <li>Search the Global Database.<br>
      </li>
    </ul>
  </li>
  <li><u><font color="#C0C0C0">Modify Records</font></u> <br>
    &nbsp;&nbsp;&nbsp; Allows you to modify the students records.
    <ul>
      <li>Not available in prototype.</li>
    </ul>
  </li>
</ul>
<p>&nbsp;&nbsp; </p>
<p>&nbsp;</p>
<p><br>
</p>
</body>
</html>