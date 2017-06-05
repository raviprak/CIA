<%@ page isThreadSafe="true" %>
<%@ page session="true" %>


<%
// get the userID (if any) and populate form input tag so the user id appears when the user comes back
String id = "";
if (! session.isNew()) {
id = (String) session.getAttribute("id");
if (null == id) id = "";
}
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
function check()
{valid=1
id=document.form1.id.value
 pass=document.form1.pass.value	
 	if(id=="")
		{alert("Enter the user id")
		valid=0
		}
	if(pass=="")
		{alert("Enter the Password")
		valid=0
		}
	if(valid==1)
	return true;
	else
	return false;
		
}				
</script>
</head>

<body bgcolor="#E8A54A">

<form name="form2" action="admnlogin.jsp" method="post">
<div align="right">
  <table border="1" width="19%">
    <tr>
      <td width="100%"><h6>Admin ID : <input type="text" name="adminID" size="5"></h6></td>
    </tr>
    <tr>
      <td width="100%"><h6>Password : <input type="password" name="password" size="5"></h6></td>
    </tr>
    <tr>
      <td width="100%"><input type="submit" value="Login"></td>
    </tr>
  </table>
</div>
</form>
  
<div align="center"> 
    <!--------------form begins here--------------->
  <form action="login.jsp" method="post" name="form1" onSubmit="return check(this);">
    <table width="74%" border="1">
      <tr> 
        <td width="34%"><div align="right"><strong><font color="#FFFFFF">User ID:</font></strong></div></td>
        <td width="37%"><input name="id" type="text" id="id" size="20" value="<%= id %>"></td>
        <td width="29%" rowspan="4" valign="top"><div align="left"><strong><font color="#FFFFFF">Forgot 
            your password?</font></strong><font color="#FFFFFF"><br>
            click <a href="passret1.jsp">here</a> to get it.</font></div></td>
      </tr>
      <tr> 
        <td><div align="right"><strong><font color="#FFFFFF">Password:</font></strong></div></td>
        <td><input name="pass" type="password" id="pass" size="15"></td>
      </tr>
      <tr> 
        <td colspan="2"><div align="center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input name="login" type="submit" id="login" value="Login" >
          </div></td>
      </tr>
      <tr> 
        <td colspan="2"><font color="#FFFFFF"><strong>Unregistered organisations please 
          register themselves </strong><a href="../registration/registration.jsp">here</a></font></td>
      </tr>
    </table>
</form>
  <!-------FORM ENDS HERE------->
</div>
</body>
</html>
