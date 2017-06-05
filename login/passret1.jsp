<%@ page language="java" %>
<%@ page isThreadSafe="true" %>
<%@ page session="true" %>


<%
// get the userID (if any) and populate form input tag
String userID = "";
if (! session.isNew()) {
userID = (String) session.getAttribute("userID");
if (null == userID) userID = "";
}
%>

<html>
<head>
<title>Logon</title>

<script language="JavaScript" type="text/JavaScript">
function check()
{valid=1
id=document.form1.userid.value
 	if(id=="")
		{alert("Enter the user id")
		valid=0
		}
	
	if(valid==1)
	return true;
	else
	return false;
		
}		
</script>



</head>

<body>
<div align="center">&nbsp;</div>
<div align="center">&nbsp;</div> 
<div align="center">&nbsp;</div> 
<div align="center">

</div> 



<div align="center">
<FORM name="form1" action="passret2.jsp" method="post" onSubmit="return check(this);">
<table>
<tr>
<td align="right">User Name:</td>
<td align="left"><input type="Text" size="10" name="userid" value="<%= userID %>"></td>
</tr>

<tr> 
<td align="center" colspan="2"><input type="submit" size="10" name="OK" value="Enter"></td>
</tr> 
</table>
</form>
</div>

</body>
</html>