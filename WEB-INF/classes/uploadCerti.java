// All Functions regarding to certificate upload all found here

package com.beans.upload;
import java.sql.*;
import com.util.*;
public class uploadCerti implements userpass
{ 
public void writeToDB2(String oid,String grade,String[] subjects)
 {Connection conn;
  Statement stat;
  
  String url="jdbc:odbc:db2cia";
  String qry;
  
  oidgenerator generate = new oidgenerator("O_CERTI_ID");
  String ocid=""+generate.getnorecs();
  qry="INSERT INTO O_CERTI_ID(OID, GRADE, OCID) VALUES ('";
  qry+=oid+"','";
  qry+=grade+"',";
  qry+=ocid+")";
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   System.out.println(qry);
   stat.execute(qry);
     
   //Creating new Table wid the subjects
   
   
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
  newMarksTable(ocid,subjects);
  }

public void newMarksTable(String ocid,String[] Subjects)
 {
  Connection conn;
  Statement stat;
  
  String url="jdbc:odbc:db2cia";
  String qry, qry1;
  int i;
  
  qry="CREATE TABLE TBL"+ocid+" ( SI CHARACTER(10), ";
  qry1="INSERT INTO TBL"+ocid+" VALUES ('SI','";
  for(i=0;i<Subjects.length-1;i++)
  {qry+=Subjects[i]+" CHARACTER(12), ";
   qry1+=Subjects[i]+"','";
  }
   qry+=Subjects[i]+" CHARACTER(12));"; 
   qry1+=Subjects[i]+"');";
   try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   stat.execute(qry);
   stat.execute(qry1);
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
 	
 	