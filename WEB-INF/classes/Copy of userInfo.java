package com.beans.upload;
import java.io.*;
import java.util.*;
import java.sql.*;
import com.util.*;

public class userInfo implements Serializable {

// Properties
private String birthdate;
private String birthdateInput;
private String emailaddr;
private String emailaddrInput;
private String sex;
private String sexInput;
private String pName_f;
private String pName_fInput;
private String pName_l;
private String pName_lInput;
private String f_Name;
private String f_NameInput;
private String m_Name;
private String m_NameInput;
private String address;
private String addressInput;
private String state;
private String stateInput;
public String grade;
private String gradeInput;
private String rollno;
private String rollnoInput;
private String yearofpassing;
private String yearofpassingInput;

private String pincode;
private String pincodeInput;

private boolean isInitialized;

public String getpName_f( ) 
{
return (pName_f == null ? "" : pName_f);
}
public String getpName_fFormatted( ) 
{
return toHTMLString(getpName_f());
}
public void setpName_f(String pName_f) 
{
isInitialized = true;
pName_fInput = pName_f;
this.pName_f = pName_f;
}

public String getpName_l( ) 
{
return (pName_l == null ? "" : pName_l);
}
public String getpName_lFormatted( ) 
{return toHTMLString(getpName_l());
}
public void setpName_l(String pName_l) 
{
isInitialized = true;
pName_lInput = pName_l;
this.pName_l = pName_l;
}

public String getgrade( ) 
{return (grade == null ? "": grade);
}

public String getgradeFormatted( ) 
{
return toHTMLString(getgrade());
}

public void setgrade(String grade) 
{
isInitialized = true;
gradeInput = grade;
this.grade = grade;
}

public String getrollno( ) 
{return (rollno == null ? "": rollno);
}

public String getrollnoFormatted( ) 
{return toHTMLString(getrollno());
}

public void setrollno(String rollno) 
{
isInitialized = true;
rollnoInput = rollno;
this.rollno = rollno;
}

public String getyearofpassing( ) 
{return (yearofpassing == null ? "": yearofpassing);
}
public String getyearofpassingFormatted( ) 
{return toHTMLString(getyearofpassing());
}

public void setyearofpassing(String yearofpassing) 
{
isInitialized = true;
yearofpassingInput = yearofpassing;
this.yearofpassing = yearofpassing;
}


public String getbirthdate( ) 
{return (birthdate == null ? "" : birthdate);
}
public String getbirthdateFormatted( ) 
{return toHTMLString(getbirthdate());
}
public void setbirthdate(String birthdate) 
{
isInitialized = true;
birthdateInput = birthdate;
this.birthdate = birthdate;
}

public String getemailaddr( ) 
{
return (emailaddr == null ? "" : emailaddr);
}
public String getemailaddrFormatted( ) 
{return toHTMLString(getemailaddr());
}

public void setemailaddr(String emailaddr) 
{
isInitialized = true;
emailaddrInput = emailaddr;
if (isValidEmailAddr(emailaddr))
{
this.emailaddr = emailaddr;}
}

public String getsex( ) 
{
return (sex == null ? "" : sex);
}
public String getsexFormatted( ) 
{return toHTMLString(getsex());
}
public void setsex(String sex) 
{
isInitialized = true;
sexInput = sex;
this.sex = sex;
}

public String getf_Name( )
{
return (f_Name == null ? "" : f_Name);
}
public String getf_NameFormatted( ) 
{return toHTMLString(getf_Name());
}
public void setf_Name(String f_Name) 
{
isInitialized = true;
f_NameInput = f_Name;
this.f_Name = f_Name;
}






public String getm_Name( )
{
return (m_Name == null ? "" : m_Name);
}

public String getm_NameFormatted( ) 
{return toHTMLString(getm_Name());
}
public void setm_Name(String m_Name) 
{
isInitialized = true;
m_NameInput = m_Name;
this.m_Name = m_Name;
}

public String getaddress( )
{
return (address == null ? "" : address);
}
public String getaddressFormatted( ) 
{return toHTMLString(getaddress());
}
public void setaddress(String address) 
{
isInitialized = true;
addressInput = address;
this.address = address;
}

public String getstate( ) 
{
return (state == null ? "" : state);
}
public String getstateFormatted( ) 
{return toHTMLString(getstate());
}
public void setstate(String state) 
{
isInitialized = true;
stateInput = state;
this.state = state;
}
/*
public String getpinCode( ) 
{
return (pincode == null ? "" : pincode);
}
public void setpinCode(String pincode)
{
isInitialized = true;
pincodeInput = pincode;
this.pincode = pincode;
}
*/
public String getStatusMsg() 
 {
        StringBuffer msg = new StringBuffer();
        if (!isInitialized()) 
           {
            msg.append("Please enter values in required fields");
           }
        else if (!isValid()) 
              {
                 msg.append("The following values are missing or invalid: ");
                 msg.append("<ul>");
                 if (birthdate == null) 
			 {
                    if(birthdateInput == null) 
                    {
                     msg.append("<li>Birth date is missing");
                    }
                    else
                     {
                      msg.append("<li>Birth date is invalid");
                     }
                   }
                  
            if (emailaddr == null)
		    {   if (emailaddrInput == null)
                    {  
                    msg.append("<li>Email address is missing");
                    }
                      else
                        {msg.append("<li>Email address is invalid");
                        }
                }
            if (sex == null) 
		    { if (sexInput == null) 
                   {msg.append("<li>Sex is missing");
                   }
                   else
                    {msg.append("<li>Sex is invalid");
                    }
                 }
                
            if (pName_f == null) 
               {
                if (pName_fInput == null)
                 {msg.append("<li>First name is missing");
                 }
                  else
                     {msg.append("<li>First name is invalid");
                     }
                }     
            
		if (pName_l == null) 
		  {
                if (pName_lInput == null)
                {
                msg.append("<li>Last name is missing");
                }
		    else
                {msg.append("<li>Last name is Invalid");
                }
               }
            
            if (f_Name == null) 
		 {
               if (f_NameInput == null) 
		    {msg.append("<li>Father's name is missing");
                }
               else
                {msg.append("<li>Father's name is missing");
                 }
              }
        
            if (address == null) 
		{
               if (addressInput == null) 
		   {msg.append("<li>Address is missing");
               }
               else
               {msg.append("<li>Address is Invalid");
               }             
		}
         if (state == null) 
		{
                if (stateInput == null)
                {msg.append("<li>State of residence of student is missing");
                }
                else
		    {msg.append("<li>State of residence of student is Invalid");
                }
            }            
          
          if (rollno == null) 
		{
              if (rollnoInput == null)
               {  
              msg.append("<li>Student's Roll No is missing");
               }
		  else
               {  
              msg.append("<li>Student's Roll No is invalid");
               }	            
             } 
           
           if (grade == null) {
               if (gradeInput == null) 
                  {
                msg.append("<li>Students Grade is missing");
                  }
                else{
                msg.append("<li>Students Grade is Invalid");
                  }
                }

           if (yearofpassing == null) {
                if (yearofpassingInput == null)
                 {msg.append("<li>Student's year of passing is missing");
                 }
		    else
                  {msg.append("<li>Student's year of passing is Invalid");
                 }
                }
            msg.append("</ul>");
            
        }

  //else {
  //          
 //     <jsp:forward page="getmarks.jsp" />
//        }
        return msg.toString();
   }

public boolean isValid( ) {
return
birthdate != null && sex != null && pName_f != null  && pName_l != null && m_Name != null && f_Name != null && address != null && state != null && grade != null && yearofpassing != null && rollno != null ;
}

public static String toHTMLString(String in) {
        StringBuffer out = new StringBuffer();
        for (int i = 0; in != null && i < in.length(); i++) 
        {
            char c = in.charAt(i);
            if (c == '\'') {
                out.append("&#39;");
                 }
            else if (c == '\"') 
              {
                out.append("&#34;");
              }
            else if (c == '<') 
              {
                out.append("&lt;");
              }
            else if (c == '>') 
              {
                out.append("&gt;");
              }
            else if (c == '&') 
              {
                out.append("&amp;");
              }
            else 
             {
                out.append(c);
             }
        }
        return out.toString();
    }





public static boolean isValidEmailAddr(String emailAddrString) {
        boolean Valid = false;
        if(emailAddrString == null)
         return true;   //a person may not specify his email id
        if (emailAddrString.indexOf("@") != -1 &&
            emailAddrString.indexOf(".") != -1) {
            Valid = true;
        }
        return Valid;
    }

private boolean isInitialized() {
        return isInitialized;
    }

 
public void writeToDB2(String orgid)
 {Connection conn;
  Statement stat;
  
  String url="jdbc:odbc:db2cia";
  String username="db2admin";
  String password="project";
  String qry;
  
  oidgenerator oid = new oidgenerator("PERSONAL_INFO");
  String pid=""+oid.getnorecs();
  qry="INSERT INTO PERSONAL_INFO(PID, PNAME, SEX, FNAME, MNAME, YEAR_OF_BIRTH, ADDRESS, PLACE, EMAIL) VALUES (";  
  qry+=pid+",'";
  qry+=getpName_fFormatted()+" "+getpName_lFormatted()+"','";
  qry+=getsexFormatted()+"','";
  qry+=getf_NameFormatted()+"','";
  qry+=getm_NameFormatted()+"','";
  qry+=getbirthdateFormatted()+"','";
  qry+=getaddressFormatted()+"','";
  qry+=getstateFormatted()+"','";  
  qry+=getemailaddrFormatted()+"')";

  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   stat.execute(qry);
   stat.close();
   conn.close();  
     
  }catch(SQLException se)
   {System.err.println("Failed to connect to the database or execute query!");
    se.printStackTrace();
   }
   catch(ClassNotFoundException ce)
   {System.err.println("Failed to load JDBC/ODBC driver");
    ce.printStackTrace();
   }
  writeToDB2alt(pid, orgid);
 }

public void writeToDB2alt(String pid, String oid)
 {Connection conn;
  Statement stat;
  
  String url="jdbc:odbc:db2cia";
  String username="db2admin";
  String password="project";
  String qry;
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   oidgenerator si = new oidgenerator("STUDENT_INFO");
   
   qry="INSERT INTO STUDENT_INFO(SI, PID, OID, ROLLNO, YEAROFPASSING, GRADE) VALUES (";
   qry+=si.getnorecs();+",";
   qry+=pid+",'";
   qry+=oid+"','";
   qry+=getrollnoFormatted()+"','";
   qry+=getyearofpassingFormatted()+"','";
   qry+=getgradeFormatted()+"')";
   
   stat.execute(qry);
   
   stat.close();
   conn.close();
   }catch(SQLException se)
   {System.err.println("Failed to connect to the database or execute query!");
    se.printStackTrace();
   }
   catch(ClassNotFoundException ce)
   {System.err.println("Failed to load JDBC/ODBC driver");
    ce.printStackTrace();
   }
 }

}