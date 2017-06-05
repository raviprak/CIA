package com.util;

import java.sql.*;

public class oidgenerator implements userpass
{ String database;
  public oidgenerator(String database)
    {
     this.database=database; 	
    }	
 public int getnorecs()
 {Connection conn;
  Statement stat;
  ResultSet rset;
  
  int i=0;
  String url="jdbc:odbc:db2cia";
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   String qry="SELECT * FROM "+database; 
   rset=stat.executeQuery(qry);
  
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
   
  return i+1;
 }
 }