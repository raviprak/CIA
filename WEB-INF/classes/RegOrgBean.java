package com.beans.register;

import java.io.*;
import java.sql.*;

public class RegOrgBean implements Serializable, userpass
{private String errmessg, loginname, passwd, secretques; 
 private String secretans, org, streetadd, city, state;
 private String country, pin, telephone, fax, siteaddr;
 private boolean isValid;
 
 
 private void setisValid()
 {//impose restrictions on variables by setting isValid to false if restrictions are not met
  //and add to errmessg what all the user needs to change. If everything is valid change isValid to true
  isValid=true;  //delete this when u work on this function, Samrat.
  errmessg="<ul></ul>";
  if( !checkLoginname() ) isValid=false;  
 } 
 
 public boolean getisValid()
 {setisValid();
  return isValid;
 }
 
 public void seterrmessg(String arg) //Appends to error Message.
 {errmessg=errmessg.substring(0,errmessg.indexOf("</ul>"));
  errmessg+="<li>"+arg+"</li></ul>";
 }
 
 
 public boolean checkLoginname()
 {boolean isAvailable=false;
  Connection conn;
  Statement stat;
  ResultSet rset;
  
  String url="jdbc:odbc:db2cia";
  String qry;    
  
  System.out.println(username+" "+password);
  qry="SELECT * FROM SignedOrgan WHERE LOGINNAME='"+loginname+"';";
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   rset=stat.executeQuery(qry);
   isAvailable=!(rset.next());        //Am using to check if there are any rows
   qry="SELECT * FROM REGISTRATION_AUTHENTICATION WHERE USERNAME='"+loginname+"';";
   rset=stat.executeQuery(qry);
   isAvailable &= !(rset.next());
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
   
   if(!isAvailable) seterrmessg("Please choose another login name as "+loginname+" already exists");
   return isAvailable; 
 }
 
 public void writeToDB2()
 {Connection conn;
  Statement stat;
  
  String url="jdbc:odbc:db2cia";
  String qry;
  
  qry="INSERT INTO SignedOrgan VALUES ('";  
  qry+=loginname+"','";                     
  qry+=passwd+"','";
  qry+=secretques+"','";
  qry+=secretans+"','";
  qry+=org+"','";
  qry+=streetadd+"','";
  qry+=city+"','";
  qry+=state+"','";
  qry+=country+"','";
  qry+=pin+"','";
  qry+=telephone+"','";   
  qry+=fax+"','";
  qry+=siteaddr+"')";

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

 }
 
 public RegOrgBean()
 {errmessg=loginname=passwd=secretques=secretans=org=streetadd=city=state="";
  country=pin=telephone=fax=siteaddr="";
 }
 
 public void setloginname(String arg)
 {loginname=arg;}
 
 public void setpasswd(String arg)
 {passwd=arg;}
 
 public void setsecretques(String arg)
 {secretques = arg;}
 
 public void setsecretans(String arg)
 {secretans=arg;}
 
 public void setorg(String arg)
 {org=arg;}
 
 public void setstreetadd(String arg)
 {streetadd=arg;}
 
 public void setcity(String arg)
 {city=arg;}
 
 public void setstate(String arg)
 {state=arg;}
 
 public void setcountry(String arg)
 {country=arg;}
 
 public void setpin(String arg)
 {pin=arg;}
 
 public void settelephone(String arg)
 {telephone=arg;}
 
 public void setfax(String arg)
 {fax=arg;}
 
 public void setsiteaddr(String arg)
 {siteaddr=arg;}
 
 
 public String geterrmessg()
 {return errmessg;}
 
 public String getloginname()
 {return loginname;}
 
 public String getpasswd()
 {return passwd;}
 
 public String getsecretques()
 {return secretques;}
 
 public String getsecretans()
 {return secretans;}
 
 public String getorg()
 {return org;}
 
 public String getstreetadd()
 {return streetadd;}
 
 public String getcity()
 {return city;}
 
 public String getstate()
 {return state;}
 
 public String getcountry()
 {return country;}
 
 public String getpin()
 {return pin;}
 
 public String gettelephone()
 {return telephone;}
 
 public String getfax()
 {return fax;}
 
 public String getsiteaddr()
 {return siteaddr;}
 
}