<%@ page language="java" contentType="text/html" %>

<html>
<head>
<title> CIA: Approval Page </title>

<script type="text/javascript">
function setapprove()
{document.orglist.action.value="approve";
 document.orglist.submit();
}

function setdeny()
{document.orglist.action.value="deny";
 document.orglist.submit();
}
</script>

<%com.util.Regutil dbutil=new com.util.Regutil();%>

</head>

<body>
<p> This is the list of Organisations that have signed up, but are currently waiting approval by the authority.
</p>

<form name="displayattr" action="approval.jsp" method="POST">
<select name="nooforgs" >
<option value="100" <%if(request.getParameter("nooforgs")==null) {%> selected <% } %>>No. of Organisations per page
<option value="1" <%if(request.getParameter("nooforgs")!=null) if((request.getParameter("nooforgs")).equals("1")) {%> selected <% } %>>Organisations to show : 1
<option value="2" <%if(request.getParameter("nooforgs")!=null) if((request.getParameter("nooforgs")).equals("2")) {%> selected <% } %>>Organisations to show : 2
<option value="5" <%if(request.getParameter("nooforgs")!=null) if((request.getParameter("nooforgs")).equals("5")) {%> selected <% } %>>Organisations to show : 5
<option value="10"<%if(request.getParameter("nooforgs")!=null) if((request.getParameter("nooforgs")).equals("10")) {%> selected <% } %>>Organisations to show : 10
<option value="25"<%if(request.getParameter("nooforgs")!=null) if((request.getParameter("nooforgs")).equals("25")) {%> selected <% } %>>Organisations to show : 25
</select>

<select name="Page">
<option value="Page0">Page Number
<%int nrecs=dbutil.getnorecs();  
  int nrecppg;
  if(request.getParameter("nooforgs")!=null) nrecppg=Integer.parseInt(request.getParameter("nooforgs"));
  else nrecppg=10;
  int pgno;
  if(request.getParameter("Page")!=null) pgno=Integer.parseInt(request.getParameter("Page"));
  else pgno=1;
 
  for(int ctr=0; ctr<=nrecs/nrecppg; ctr++)
  {%> <option value="Page<%=(ctr+1) %>"> Page Number <%= (ctr+1) %>
<%}%>
</select>
<input type="Submit" Value="Show">

</form>

<form name="orglist" action="approval.jsp" method="POST">
<input type="hidden" name="action" value="null" >
<input type="button" name="approve" value="Approve" onClick="setapprove()">
<input type="button" name="deny" value="Deny" onClick="setdeny()">

<%if(request.getParameter("action")!=null)
 {
  if(request.getParameter("action").equals("approve"))
  {for(int cnt=(pgno-1)*nrecppg; cnt<nrecs && cnt<pgno*nrecppg; cnt++)
   {if(request.getParameter("selection"+cnt)!=null) dbutil.regrecno(cnt);
   }
  }
  if(request.getParameter("action").equals("deny"))
  {for(int cnt=(pgno-1)*nrecppg; cnt<nrecs && cnt<pgno*nrecppg; cnt++)
   {if(request.getParameter("selection"+cnt)!=null) dbutil.delrec(cnt);
   }
  }
 }
%>

<table border="1">
<tr> <th>Select</th><th>Username</th><th>Organisation</th><th>Street Address</th>
<th>City</th><th>State</th><th>Country</th><th>Telephone</th><th>Pin</th><th>Fax</th>
<th>Site-Address</th>
</tr>
<%String alldata[]=dbutil.retvalues();
  nrecs=dbutil.getnorecs();
  for(int i=(pgno-1)*nrecppg; i<nrecs && i<pgno*nrecppg; i++)
  {%><tr><td>
  <input type="checkbox" name="selection<%=i%>"></td>
   
 <%for(int j=0; j<10; j++)
   {%><td><%=alldata[10*i+j]%></td>
 <%}//Add a function to put &nbsp where alldata[10*i+j] contains only spaces
 %></tr> <%
  }%>
 

</table>

</form>

</body>
</html>
