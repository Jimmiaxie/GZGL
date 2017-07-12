package com.wgw.dao;
import java.sql.*;

public  class Usermain
{
    
     public int update(Connection con,String sql){
                 int nResult=0;
	         try{
				   
		          Statement stmt=con.createStatement();
			      nResult=stmt.executeUpdate(sql);
				   stmt.close();
				 
				 
				 } 
		      
	            catch(Exception e){
			
		  }
		  finally{
		 	return nResult;
		 }
	            
		}
	public ResultSet queryData(Connection con,String sSQL){
		
		ResultSet rResult=null;
		try{
			
			Statement stmt=con.createStatement();
			rResult=stmt.executeQuery(sSQL);
		}
		catch(Exception e){
			
		}
		finally{
			return rResult;
		}
	}
}