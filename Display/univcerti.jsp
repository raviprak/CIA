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
	String m1=(String) session.getAttribute("m1"),m2=(String) session.getAttribute("m2"),m3=(String) session.getAttribute("m3"),m4=(String) session.getAttribute("m4"),m5=(String) session.getAttribute("m5"),m6=(String) session.getAttribute("m6"),m7=(String) session.getAttribute("m7"),m8=(String) session.getAttribute("m8");
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

<body background="univcerti.jpg">
<div id="Layer1" style="position:absolute; left:-3px; top:109px; width:362px; height:69px; z-index:1">
  <table width="100%" height="69" border="0">
    <tr> 
      <td width="43%">&nbsp;</td>
      <td width="57%">&nbsp;<%=name %></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;<%=instname %></td>
    </tr>
  </table>
</div>
<div id="Layer2" style="position:absolute; left:463px; top:109px; width:105px; height:24px; z-index:2">
  <table width="100%" border="0">
    <tr>
      <td>&nbsp;<%=roll %></td>
    </tr>
  </table>
</div>
<div id="Layer3" style="position:absolute; left:10px; top:266px; width:558px; height:464px; z-index:3">
  <table width="100%" height="377" border="0">
    <tr> 
      <td width="10%">&nbsp;</td>
      <td width="49%"><div align="center">&nbsp;Semester 1</div></td>
      <td width="11%"><div align="center">100</div></td>
      <td width="10%"><div align="center">&nbsp;<%=m1 %></div></td>
      <td width="9%">&nbsp;</td>
      <td width="11%">&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 2</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m2 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 3</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m3 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 4</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m4 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 5</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m5 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 6</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m6 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 7</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m7 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td><div align="center">&nbsp;Semester 8</div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">&nbsp;<%=m7 %></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
<div id="Layer4" style="position:absolute; left:458px; top:-1px; width:109px; height:106px; z-index:4"><img src="student.jpg" width="110" height="105"></div>
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
