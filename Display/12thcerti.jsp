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
	7.subject name and store in variable sub1 
	8.school name and store in variable instname
	9.marks for sub 1 and store in variable m1
	 do the same for all subjects
	*/
String m1=(String) session.getAttribute("m1"),m2=(String) session.getAttribute("m2"),m3=(String) session.getAttribute("m3"),m4=(String) session.getAttribute("m4"),m5=(String) session.getAttribute("m5");
	String mname=(String) session.getAttribute("mname"),name=(String) session.getAttribute("name"),fname=(String) session.getAttribute("fname"),instname=(String) session.getAttribute("instname"),dob=(String) session.getAttribute("dob");
	String roll=(String) session.getAttribute("RollNo");
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

<body background="12thcerti.jpg">
<div id="Layer1" style="position:absolute; left:38px; top:384px; width:1304px; height:488px; z-index:1">
  <table width="100%" height="489" border="0">
    <tr> 
      <td width="8%" height="101">&nbsp;</td>
      <td width="33%">&nbsp;</td>
      <td width="8%">&nbsp;</td>
      <td width="8%">&nbsp;</td>
      <td width="9%">&nbsp;</td>
      <td width="24%">&nbsp;</td>
      <td width="10%">&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Physics</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m1 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Chemistry</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m2 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Mathematics</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m3 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;English</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m4 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Computers</div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;<%=m5 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
<div id="Layer2" style="position:absolute; left:30px; top:236px; width:569px; height:143px; z-index:2">
  <table width="113%" height="145" border="0">
    <tr> 
      <td width="51%" height="31">&nbsp;</td>
      <td width="49%">&nbsp;<%=name %></td>
    </tr>
    <tr> 
      <td height="33">&nbsp;</td>
      <td>&nbsp;<%=mname %></td>
    </tr>
    <tr> 
      <td height="35">&nbsp;</td>
      <td>&nbsp;<%=fname %></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;<%=instname %></td>
    </tr>
  </table>
</div>
<div id="Layer3" style="position:absolute; left:1122px; top:227px; width:146px; height:20px; z-index:3">
  <table width="100%" height="27" border="3">
    <tr>
      <td>&nbsp;<%=roll %></td>
    </tr>
  </table>
</div>
<div id="Layer4" style="position:absolute; left:1117px; top:40px; width:122px; height:120px; z-index:4"><img src="student.jpg" width="120" height="120"></div>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
