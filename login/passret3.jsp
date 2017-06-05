<%@ page language="java" %>
<%@ page isThreadSafe="true" %>
<%@ page session="true" %>

<% //This Page handles the variables entered in the login page and searches them in database then directs to another page according to result. %> 

<%
// get parameters from request object
String userID = request.getParameter("userid");
String email = request.getParameter("email");
String sa = request.getParameter("sa");


// check for null - not passed in
if (null == userID) {
userID = "";
}


if (null == email) {
email = "";
}

if (null == sa) {
email = "";
}

/// store user id in session
session.setAttribute("userID", userID);


// check for empty values
if (userID.equals("")) {
%>


<jsp:forward page="error.htm" />


<%
} // end if (userID="")
else {
//---------------------------SEARCH FOR secreat answer IN DATABASE w.r.t userID AND COMPARE WITH sa--------------
if (search successful) {
String isValid = "OK";
session.setAttribute("isValid", isValid);
%>

<% //E-mail the password at the e-mail address provided


<%
} 
else {
%>


<jsp:forward page="error.htm" />


<%
} 
} 
%>


