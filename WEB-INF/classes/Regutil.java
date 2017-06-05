package com.util;

import java.sql.*;

public class Regutil implements userpass
{public int getnorecs()
 {Connection conn;
  Statement stat;
  ResultSet rset;
  
  int i=0;
  String url="jdbc:odbc:db2cia";
 
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   rset=stat.executeQuery("SELECT * FROM SIGNEDORGAN");
  
   while(rset.next()!=false)
    i++;
    
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
   
  return i;
 }
 
 public String[] retvalues()
 {int norecs=getnorecs();
  Connection conn;
  Statement stat;
  ResultSet rset;
  
  String url="jdbc:odbc:db2cia";
  String toret[]=new String[10*norecs];
    
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   rset=stat.executeQuery("SELECT * FROM SIGNEDORGAN");
   
   for(int i=0; i<norecs; i++)
   {rset.next();
    toret[10*i]=rset.getString("LOGINNAME");
    toret[10*i+1]=rset.getString("ORG");
    toret[10*i+2]=rset.getString("STREETADD");
    toret[10*i+3]=rset.getString("CITY");
    toret[10*i+4]=rset.getString("STATE");
    toret[10*i+5]=rset.getString("COUNTRY");
    toret[10*i+6]=rset.getString("PIN");
    toret[10*i+7]=rset.getString("TELEPHONE");
    toret[10*i+8]=rset.getString("FAX");
    toret[10*i+9]=rset.getString("SITEADDR");
   
   }
    
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
   
  return toret;
 }
 
 public void regrecno(int recno)
 {Connection conn;
  Statement stat;
  ResultSet rset;
  oidgenerator oid=new oidgenerator("ORGANISATION_IDENTITY");
  String url="jdbc:odbc:db2cia";
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   rset=stat.executeQuery("SELECT * FROM SIGNEDORGAN");
   
   for(int i=0; i<=recno; i++)
    rset.next();
   
   String toadd1="INSERT INTO ORGANISATION_IDENTITY(OID, NAME, PLACE, ADDRESS, PINCODE, WEBSITE, CONTACTNO, FAX) VALUES ('";
   toadd1+=oid.getnorecs()+"','";
   toadd1+=rset.getString("ORG")+"','";
   toadd1+=rset.getString("CITY")+"','";
   toadd1+=rset.getString("STREETADD")+"','";
   toadd1+=rset.getString("PIN")+"','";
   toadd1+=rset.getString("SITEADDR")+"','";
   toadd1+=rset.getString("TELEPHONE")+"','";
   toadd1+=rset.getString("FAX")+"')";  
   
   String toadd2="INSERT INTO REGISTRATION_AUTHENTICATION(OID, USERNAME, PASSWD, SECRETQUES, ANSWER) VALUES('";
   toadd2+=oid.getnorecs()+"','";
   toadd2+=rset.getString("LOGINNAME")+"','";
   toadd2+=rset.getString("PASSWORD")+"','";
   toadd2+=rset.getString("SECRETQUES")+"','";
   toadd2+=rset.getString("SECRETANS")+"')";
  
   stat.execute(toadd1); 
   stat.execute(toadd2);
   
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
   
   delrec(recno);
 }
 
 public void delrec(int recno)
 {Connection conn;
  Statement stat;
  ResultSet rset;
  
  String url="jdbc:odbc:db2cia";
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
   rset=stat.executeQuery("SELECT * FROM SIGNEDORGAN");
      
   for(int i=0; i<=recno; i++)
    rset.next();
   String name=rset.getString("LOGINNAME");
   stat.execute("DELETE FROM SIGNEDORGAN WHERE LOGINNAME='"+name+"'");   
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