//FUNCTION SEARCH HAS TO RETURN 3 STRINGS
// * personal information
// * organisation info
// * marks...
//WE PROCEED BY 1ST EVALUATING THE SI AND PI FROM GIVEN DATA FROM MAIN SEARCH PAGE
//THEN WE CALCULATE OCID FROM THE O_CERTI_ID
//WE PROCEED TO EVALUATE THE MARKS FROM THE DYNAMIC TABLES using SI and OCID
//USING PID WE GET THE PERSONAL IFO OF THE STUDENT
//USING OID WE GET THE DATA FOR AN ORGANISATION
//ALL THESE ARE PRINTED ON THE CERTIFICATE FINALLY
package com.beans.search;
import java.io.*;
import java.util.*;
import java.sql.*;
import com.util.*;
public class searchfunc implements userpass
 {
 
public String[][] search(String Rollno, String Oid, String Grade, String YearOfPassing)
 {Connection conn;
  Statement stat;
  ResultSet rset;
  String toret[][]=new String[4][];
  
  String url="jdbc:odbc:db2cia";
  String qry;
  
  try
  {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   conn=DriverManager.getConnection(url, username, password);
   stat= conn.createStatement();
   
   System.out.println("Inside search function\nValues Received :\nRoll : "+Rollno+",Oid : "+Oid+", Grade = "+Grade+", YOP = "+YearOfPassing);
   
   qry="SELECT SI,PID FROM STUDENT_INFO WHERE OID='"+Oid+"' AND GRADE='"+Grade+"' AND ROLLNO='"+Rollno+"'AND YEAROFPASSING='"+YearOfPassing+"'";
   rset=stat.executeQuery(qry);   
   System.out.println(rset.next());
// We Get SI And PI from the Students_INFO table
    String si=rset.getString(1);
    String pi=rset.getString(2);    
   
//Store the Personal Information in String Personal Information
   qry="SELECT PNAME,SEX,FNAME,MNAME,YEAR_OF_BIRTH,ADDRESS,PLACE,EMAIL FROM PERSONAL_INFO WHERE PID="+pi;   
   rset=stat.executeQuery(qry);
   rset.next();
   String temp[] = {rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4),rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8)};   
   toret[0]=temp;
   
//Retrieving Organisation's Info
   qry="SELECT NAME, PLACE, ADDRESS, PINCODE, WEBSITE, CONTACTNO, FAX FROM ORGANISATION_IDENTITY WHERE OID='"+Oid+"'";
   rset=stat.executeQuery(qry);
   rset.next();
   String temp1[]={rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7)};
   toret[1]=temp1;
      
//We Get OCID from O_Certi_ID table   
   qry="SELECT OCID FROM O_CERTI_ID WHERE OID='"+Oid+"' AND GRADE='"+Grade+"'";
   rset=stat.executeQuery(qry);   
   rset.next();
   String ocid=rset.getString(1);
   
   
 //Retrieving Information from the Marks Table
   qry="SELECT * FROM TBL"+ocid+" WHERE SI='"+si+"'";
   rset=stat.executeQuery(qry);   
   rset.next();
   ResultSetMetaData rsmd=rset.getMetaData();

 //Displaying Information
   ciautility ci=new ciautility(null); 
   toret[2]=ci.getsubs(Oid,Grade); //ASSIGNS SUBJECT NAMES TO 3RD ROW

   toret[3]=new String[rsmd.getColumnCount()-1]; //4th row, 1st coloumn has SI 
   for(int tem=2; tem<=toret[3].length+1; tem++)  //and subsequent columns have the 
   {toret[3][tem-2]=rset.getString(tem);	   //marks
   }
   
 //Store the Subjects and marks in a string    
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
 
 