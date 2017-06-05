<%@ page language="java" contentType="text/html"%>
<%@ page import="com.beans.search.*" %>
<%@ page session="true" %>


<html>
<title> Search Results </title>
<body bgcolor="#FFF0E1">
<%searchfunc s1=new searchfunc();
  String toshow[][]= s1.search(request.getParameter("RollNo"), request.getParameter("Oid"), request.getParameter("Grade"), request.getParameter("YearOfPassing"));  
  if(toshow==null) System.out.println("Error \nFounder \nRavi");
%>
The details of the Person are:
<table border="1"> 
<tr><th>Name</th><th>Sex</th><th>Father's Name</th><th>Mother's Name</th><th>Date of Birth</th><th>Address</th><th>Place</th><th>E-mail</th> </tr>>
<tr> 
<%for(int i=0; i<toshow[0].length; i++)
  {%> <td> <%=toshow[0][i]%> </td>
<%}%> </tr></table>

The details of the Organisation are :
<table border="1">
<tr><th>Issuing Organisation</th><th>Place</th><th>Address</th><th>Pincode</th><th>Website</th><th>Contact No</th><th>E-mail</th></tr>
<tr><%for(int i=0; i<toshow[1].length; i++)
  {%> <td> <%=toshow[1][i]%> </td>
<%}%> </tr></table>

The details of the Certificate are :
<table border="1">
<tr>
<%for(int i=1; i<toshow[2].length; i++)
  {%> <th><%=toshow[2][i]%> </th>
<%}%></tr>
<tr>
<%for(int i=0; i<toshow[3].length; i++)
  {%> <td><%=toshow[3][i]%> </td>
<%}

  session.setAttribute("mname",toshow[0][3]);
  session.setAttribute("fname",toshow[0][2]);
  session.setAttribute("name",toshow[0][0]);
  session.setAttribute("instname",toshow[1][0]);
  session.setAttribute("dob",toshow[0][4]);
%></tr></table>

<% if(request.getParameter("Grade").trim().equals("10th")){ %>
<a href="../Display/cpy10thcerti.jsp"> View Certificate </a>
<%session.setAttribute("m1",toshow[3][0]);
  session.setAttribute("m2",toshow[3][1]);
  session.setAttribute("m3",toshow[3][2]);
  session.setAttribute("m4",toshow[3][3]);
  session.setAttribute("m5",toshow[3][4]);
  session.setAttribute("RollNo", request.getParameter("RollNo"));
} if(request.getParameter("Grade").trim().equals("12th")){ %>
<a href="../Display/12thcerti.jsp"> View Certificate </a>
<%session.setAttribute("m1",toshow[3][0]);
  session.setAttribute("m2",toshow[3][1]);
  session.setAttribute("m3",toshow[3][2]);
  session.setAttribute("m4",toshow[3][3]);
  session.setAttribute("m5",toshow[3][4]);
  session.setAttribute("RollNo", request.getParameter("RollNo"));
} if(request.getParameter("Grade").trim().equals("BTech")){ %>
<a href="../Display/univcerti.jsp"> View Certificate </a>
<%session.setAttribute("m1",toshow[3][0]);
  session.setAttribute("m2",toshow[3][1]);
  session.setAttribute("m3",toshow[3][2]);
  session.setAttribute("m4",toshow[3][3]);
  session.setAttribute("m5",toshow[3][4]);
  session.setAttribute("m2",toshow[3][5]);
  session.setAttribute("m3",toshow[3][6]);
  session.setAttribute("m4",toshow[3][7]);
  session.setAttribute("m5",toshow[3][8]);
  session.setAttribute("RollNo", request.getParameter("RollNo"));
} %>
</body>
</html>