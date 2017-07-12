<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>GZGL</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" href="chaxunjieguo2.css" type="text/css">
    
  </head>
  <body>
  	<%
  		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
  		
  		String search = request.getParameter("search");
  		
  		String select = request.getParameter("select");
  		
  		if(search == null){
  			search="";
  		}
  	
  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();  //���������
		String url="jdbc:sqlserver://localhost:1433; DatabaseName=GZGL";
		String user="sa";
		String password="20134675";
		Connection con=DriverManager.getConnection(url,user,password); 
		
		Statement stmt=con.createStatement();
		Statement stmt1=con.createStatement();                              
		Statement stmt2=con.createStatement();                            //创建SQL陈述式对象
		Statement stmt3=con.createStatement();                            //创建SQL陈述式对象
		Statement stmt4=con.createStatement();                            //创建SQL陈述式对象
		
		String query = null;
		String query1="SELECT * FROM YUEGONGZI";
		String query2="UPDATE JINTIE SET ALLOWANCE=5*OVERTIME*OVERDAY WHERE OVERTYPE='日常加班      '";
		String query3="UPDATE JINTIE SET ALLOWANCE=10*OVERTIME*OVERDAY WHERE OVERTYPE='周末加班      '";
		String query4="UPDATE JINTIE SET ALLOWANCE=20*OVERTIME*OVERDAY WHERE OVERTYPE='假期加班      '";
		
		stmt2.executeUpdate(query2);
        stmt3.executeUpdate(query3);
        stmt4.executeUpdate(query4);
		
		if(select.equals("xingming")){
			query="SELECT * FROM YUEGONGZI Where SNAME# LIKE '%"+search+"%'";
		}
		else if(select.equals("yuangonghao")){
		 query="SELECT * FROM YUEGONGZI Where EMPNUM LIKE '%"+search+"%'";
		 }
		 
		ResultSet rs=stmt.executeQuery(query1);
		
  	 %>
  	
  	<div id="container">

    <div id="header"><!--页面头部-->
        <div id="title">
            查询结果
        </div>
    </div>
    <div id="body">
        <table class="datalist">
            <tr>
                <th scope="col">员工号</th>
                <th scope="col">姓名</th>
                <th scope="col">年终奖</th>
            </tr>
   
   <% int i=0;while(rs.next()){ i++;%>
   <%if(i%2 == 0){%>
   <tr class="altrow">
     <td><%=rs.getString(2)%></td>
     <td><%=rs.getString(1)%></td>
     <td><%=rs.getString(5)%></td>
   </tr>
 <% } else {%>
  <tr>
     <td><%=rs.getString(2)%></td>
     <td><%=rs.getString(1)%></td>
     <td><%=rs.getString(5)%></td>
   </tr>
 <% } %> 
 <% } %>
        </table>
       <%
          rs.close();
          stmt.close();
          stmt1.close();
          stmt2.close();
          stmt3.close();
          stmt4.close();
          con.close();
       %>
        <input type="button" name="print" value="打印查询结果" onclick="window.print()" id="chaxunjieguo"> 
        <input type="button"   name="back"   value="返回"   onclick="javascript:history.go(-1)">
    </div>
</div>
  </body>
</html>
