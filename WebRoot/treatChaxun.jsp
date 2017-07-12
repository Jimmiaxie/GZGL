<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import = "java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">

  </head>
  
  <body>
    <%
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=GZGL","sa","20134675");
	
		Statement stmt=con.createStatement();	
		String strQuery
		="EXEC master..xp_cmdshell 'bcp \"SELECT SNAME#,EMPNUM,PNAME,SALARY FROM GZGL..GONGZHONG\" queryout c:\\chaxun.xls -c -q -S\"asus\" -U\"sa\" -P\"20134675\"'";
		
		ResultSet rs=stmt.executeQuery(strQuery);
		rs.close();
		stmt.close();
		con.close(); 
		%>
		<a href="chaxun1.html"><h3 align="center" >返回页面</h3></a>
  </body>
</html>
