// TAKES ARGUMENTS AS DATABASE, DATABASE FIELDS - FIELD VALUE PAIRS AND EXECUTE SELECT 
// AND RETURNS NULL/FIRST COLOUMN OF TABLE SPECIFIED.
//


package com.util;
import java.sql.*;

public class ciautility implements userpass
{  public String chkIfExist[];
 	public ciautility(String chkIfExist[])
       {this.chkIfExist=chkIfExist;
       } 
 
 public String exists()
 {
  Connection conn;
  Statement stat;
  ResultSet rset;
  String qry;
  String toret="";
  
   boolean check=true;
  
  int i=0;
  String url="jdbc:odbc:db2cia";
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   if(chkIfExist.length==1)
   rset=stat.executeQuery("SELECT * FROM "+chkIfExist[0] );
   else{
   qry="SELECT * FROM "+chkIfExist[0]+" WHERE ";
   for(i=0;i<((chkIfExist.length-1)/2)-1;i++)
    { qry+=chkIfExist[2*i+1]+"="+"'"+chkIfExist[2*i+2]+"'"+" AND ";
     }
     qry+=chkIfExist[2*i+1]+"='"+chkIfExist[2*i+2]+"'";
     rset=stat.executeQuery(qry); 
  }
   if(rset.next()==false) toret=null;
   else toret=rset.getString(1);
   
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
 
 //Function to Get the Grades in the Scrool Down Box
 public String[] getGrades(String oid)
 {Connection conn;
  Statement stat;
  ResultSet rset;
  String qry;
  
  String url="jdbc:odbc:db2cia";
  String toret[]=new String[1];
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat=conn.createStatement();
   
   rset=stat.executeQuery("SELECT GRADE FROM O_CERTI_ID WHERE OID='"+oid+"'");
   
   int i=0;
   while(rset.next())
    i++;
   rset=stat.executeQuery("SELECT GRADE FROM O_CERTI_ID WHERE OID='"+oid+"'");
   rset.next();
   
   toret=new String[i];
   
   for(int j=0; j<i; j++)
   {toret[j]=rset.getString(1);
    rset.next();
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
  
// Function to Get the ORGANISATIONS in the Scrool Down Box  
  public String[] getOrgs()
 {Connection conn;
  Statement stat;
  ResultSet rset;
  String qry;
  
  String url="jdbc:odbc:db2cia";
  String toret[]=new String[1];
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat=conn.createStatement();
   
   rset=stat.executeQuery("SELECT NAME,OID FROM ORGANISATION_IDENTITY ");
   
   int i=0;
   while(rset.next())
    i++;
   rset=stat.executeQuery("SELECT NAME,OID FROM ORGANISATION_IDENTITY ");
   rset.next();
   
   toret=new String[2*i];
   
   for(int j=0; j<i; j++)
   {toret[2*j]=rset.getString(1);
    toret[2*j+1]=rset.getString(2);
    System.out.println(toret[2*j]+" "+toret[2*j+1]);
    rset.next();
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
  
  
  public String[] getsubs(String oid, String grade)
  {Connection conn;
   Statement stat;
   ResultSet rset;
   
   String url="jdbc:odbc:db2cia";
   int ocid;
   String toret[]=null;
   
   try
   {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    conn=DriverManager.getConnection(url, username, password);
    stat=conn.createStatement();
    
    rset=stat.executeQuery("SELECT * FROM O_CERTI_ID WHERE OID='"+oid+"' AND GRADE='"+grade+"'");
    
    rset.next();
    ocid=rset.getInt(3);   
    
    rset = stat.executeQuery("SELECT * FROM TBL"+ocid);
    ResultSetMetaData rsmd = rset.getMetaData();
    
    toret=new String[rsmd.getColumnCount()];
    for(int i=1; i<=toret.length; i++)
    {toret[i-1]=rsmd.getColumnName(i);
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
}