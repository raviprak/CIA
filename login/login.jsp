<%@ page language="java" %>
<%@ page isThreadSafe="true" %>
<%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.userpass" %>



<%
//page returns the session variables OID and the Username to be carried out thru the session
//This Page handles the variables entered in the login page and searches them in
// database then directs to another page according to result. 

//SETS TWO SESSION VARIABLES "OID"  and "Username" and "isValid"=OK

// get parameters from request object
String userID = request.getParameter("id");
String password = request.getParameter("pass");


if(userID==null || password ==null) {%> <jsp:forward page="LogonError.htm" />

<%
}

 
else {
//---------------------------SEARCH FOR ID AND PASSWORD IN DATABASE AND COMPARE WITH userID and password--------------
//--------------------search is successful when both userid and password match
  Connection conn;
  Statement stat;
  ResultSet rset;
  String url="jdbc:odbc:db2cia";
  String qry;
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, userpass.username, userpass.password);
   stat= conn.createStatement();
   qry="SELECT * FROM REGISTRATION_AUTHENTICATION WHERE USERNAME='"+userID+"' AND PASSWD='"+password+"'";
   rset=stat.executeQuery(qry);
   if(rset.next()==false) 
   {%> <jsp:forward page="LogonError.htm" />
<% }
   else 
   {session.setAttribute("OID", rset.getString("OID") );
    session.setAttribute("Username", userID);
    session.setMaxInactiveInterval(1800);
    String isValid = "OK";
    session.setAttribute("isValid", isValid);
   }
  qry="SELECT NAME FROM ORGANISATION_IDENTITY WHERE OID='"+session.getAttribute("OID")+"'";
  rset=stat.executeQuery(qry);
  rset.next();
  session.setAttribute("ONAME", rset.getString(1));
  stat.close();
  conn.close();
  }
   catch(SQLException se)
   {System.err.println("Failed to connect to the database or execute query!");
    se.printStackTrace();
   }
   catch(ClassNotFoundException ce)
   {System.err.println("Failed to load JDBC/ODBC driver");
    ce.printStackTrace();
   } 
%>

<jsp:forward page="../login/welcome.jsp" />

<%}
%>