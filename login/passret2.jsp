<%@ page language="java" %>
<%@ page isThreadSafe="true" %>
<%@ page session="true" %>
<% //------------This page handles userid variable from passret1 and puts the secreat question to the user and asks for email and secreat answer
%>
<%
// get userID from request object
String userID = request.getParameter("userid");
%>

<%
// get the secreat question from the data base
//search for the sectreat question w.r.t login id
String sq ;//sq is secreat question searched

%>


<html>
<head>
<title>password retrieval</title>

<script language="JavaScript" type="text/JavaScript">
function check()
{valid=1
 id=document.form1.userid.value
 e=document.form1.email.value
 sa=document.form1.sa.value 
 pos1=e.indexOf("@")
 pos2=e.indexOf(".")	
	if(id=="")
		{alert("Enter the user id")
		 valid=0
		}
	if(e=="")
		{alert("Enter the e-mail address")
		 valid=0
		}
	else if((pos1==-1)||(pos2==-1))
		{
			alert("Invalid Email")
			valid=0
		}
 		
	if(sa=="")
		{alert("Enter the secreat answer")
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
<FORM name="form1" action="passret3.jsp" method="post" onSubmit="return check(this);">
<table>
<tr>
<td align="right">User Name:</td>
<td align="left"><input type="Text" size="10" name="userid" value="<%= userID %>"></td>
</tr>

<tr>
<td align="right">Secreat Question:</td>
<td align="left"><%=sq %></td>
</tr>
<tr>
<td align="right">Secreat Answer:</td>
<td align="left"><input type="Text" size="10" name="sa"></td>
</tr>
<tr>
<td align="right">e-mail:</td>
<td align="left"><input type="Text" size="10" name="email"></td>
</tr>
<tr>
<td align="center" colspan="2">&nbsp;</td>
</tr>
<tr> 
<td align="center" colspan="2"><input type="submit" size="10" name="OK" value="Submit"></td>
</tr> 
</table>
</form>
</div>

</body>





</html>
