<%@ page language="java" %>
<%@ page isThreadSafe="true" %>
<%@ page session="true" %>

<% /* Search in the data base for the following........
	1.name and store in variable name 
	2.mother name and store in variable mname
	3.father name and store in variable fname
	4.roll no. and store in variable roll
	5.name of photo and store in student.jpg
	6.date of birth and store in variable dob
	8.subject name and store in variable sub1 
	9.marks for sub 1 and store in variable m1
	 do the same for all subjects
	*/
	int sub1=90,sub2=85,sub3=100,sub4=55, sub5=65;
	int m1=10,m2=20,m3=30,m4=40,m5=50;
	int mname=1,name=2,fname=3,instname=4,dob=5, roll=6;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body background="10thcerti.gif">
<div id="Layer1" style="position:absolute; left:24px; top:309px; width:975px; height:371px; z-index:1">
  <table width="100%" height="368" border="0">
    <tr> 
      <td width="8%" height="76">&nbsp;</td>
      <td width="33%">&nbsp;</td>
      <td width="8%">&nbsp;</td>
      <td width="8%">&nbsp;</td>
      <td width="9%">&nbsp;</td>
      <td width="24%">&nbsp;</td>
      <td width="10%">&nbsp;</td>
    </tr>
    <tr> 
      <td height="41">&nbsp;</td>
      <td><div align="center">&nbsp; <%=sub1 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp; <%=m1 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="45">&nbsp;</td>
      <td><div align="center">&nbsp; <%=sub2 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp; <%=m2 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="50">&nbsp;</td>
      <td><div align="center">&nbsp; <%=sub3 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp; <%=m3 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="44">&nbsp;</td>
      <td><div align="center">&nbsp; <%=sub4 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp; <%=m4 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td height="44">&nbsp;</td>
      <td><div align="center">&nbsp;<%=sub5 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m5 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
<div id="Layer2" style="position:absolute; left:15px; top:181px; width:565px; height:124px; z-index:2">
  <table width="100%" height="126" border="0">
    <tr> 
      <td width="45%">&nbsp;</td>
      <td width="55%"><div align="left">&nbsp; <%=name %></div></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp; <%=mname %></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp; <%=fname %></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp; <%=dob %></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp; <%=instname %></td>
    </tr>
  </table>
</div>
<div id="Layer3" style="position:absolute; left:830px; top:169px; width:122px; height:20px; z-index:3">
  <table width="100%" height="27" border="0">
    <tr>
      <td><div align="center">&nbsp; <%=roll %></div></td>
    </tr>
  </table>
</div>
<div id="Layer4" style="position:absolute; left:822px; top:14px; width:114px; height:112px; z-index:4"><img src="student.jpg" width="110" height="110"></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
