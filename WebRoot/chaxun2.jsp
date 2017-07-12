<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>GZGL</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<link rel="stylesheet" href="chaxun2.css" type="text/css">
	
  </head>
  <body>
   <div id="container">
        <div id="header"><!--é¡µé¢å¤´é¨-->
            <div id="title">
               	 基本工资管理
            </div>
        </div>
        
    <div id="body">  
  	<table>
		<form action="Treatone.jsp" method="post" name="form1" >
		    <%
				  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
				   Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=GZGL","sa","20134675");
				   Statement stmt=con.createStatement();
				   String strQuery="select SALARY from GONGZHONG";
				   ResultSet rs=stmt.executeQuery(strQuery);
				   rs.next();
			   %>
		       <tr><th>工&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 种</th><th> 基 &nbsp&nbsp本&nbsp&nbsp 工&nbsp&nbsp 资 </th></tr>
		       <tr><td>市 场 顾 问&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
			   <td><input table="text" name="scgw" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>销 售 专 员</td><td><input table="text" name="xszy" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>售 前 顾 问</td><td><input table="text" name="sqgw" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>实 施 顾 问</td><td><input table="text" name="ssgw" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>行 政 专 员</td><td><input table="text" name="xzzy" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>架  构  师 </td><td><input table="text" name="jgs"  value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>开  发  员 </td><td><input table="text" name="kfy"  value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>市 场 专 员</td><td><input table="text" name="sczy" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>财 务 专 员</td><td><input table="text" name="cwzy" value=<%out.print(rs.getInt(1));rs.next();%>></td></tr>
			   <tr><td>咨 询 顾 问</td><td><input table="text" name="zxgw" value=<%out.print(rs.getInt(1));%>></td></tr>
			   <tr><td colspan=4 style="text-align: center"><input type="submit" name="submit" value="确认"><input type="reset" name="reset" value="取消"></td></tr>
			  
		</form>
		</table>
		</div>
  </body>
</html>
