<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>GZGL</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" href="chaxunjieguo.css" type="text/css">
  </head>
  <body>
	
	<%
  		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
  		
  		String empnum = request.getParameter("empnum");
  		String xingming = request.getParameter("xingming");
  		String sex = request.getParameter("sex");
  		String age = request.getParameter("age");
  		String department = request.getParameter("department");
  		String pname = request.getParameter("pname");
  		String tel = request.getParameter("tel");
  		String email = request.getParameter("email");
  		
  		if(sex.equals("suoyou")){
  			sex="";
  		}
  		if(department.equals("suoyou")){
  			department="";
  		}
  		if(pname.equals("suoyou")){
  			pname="";
  		}
  		if(empnum==null){
  			empnum="";
  		}
  		if(xingming==null){
  			xingming="";
  		}
  		if(age==null){
  			age="";
  		}
  		if(tel==null){
  			tel="";
  		}
  		if(email==null){
  			email="";
  		}
  		
  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();  //加载驱动程序
		String url="jdbc:sqlserver://localhost:1433; DatabaseName=GZGL";
		String user="sa";
		String password="20134675";
		Connection con=DriverManager.getConnection(url,user,password); //创建连接
		Statement stmt=con.createStatement();                          //创建SQL陈述式对象
		String query = null;
		
		query = "SELECT * FROM JIBEN Where SNAME# LIKE '%"+xingming+"%' and EMPNUM LIKE '%"+empnum+"%' and SEX LIKE '%"+sex+"%' and AGE LIKE '%"+age+"%' and DEPARTMENT LIKE '%"+department+"%' and PNAME LIKE '%"+pname+"%' and TEL LIKE '%"+tel+"%' and EMAIL LIKE '%"+email+"%'";
			
		ResultSet rs=stmt.executeQuery(query);
  	 %>
	
	<div id="container">
    <div id="header"><!--é¡µé¢å¤´é¨-->
        <div id="title">
            	查询工资
        </div>
    </div>
    <div id="body">
        <table class="datalist">
            <tr>
                <th scope="col">员工号</th>
                <th scope="col">姓名</th>
                <th scope="col">职务</th>
                <th scope="col">实发工资</th>
            </tr>
            <% int i=0;while(rs.next()) { i++;%>
            <%if(i%2 == 0){%>
            <tr class="altrow">       <!-- å¶æ°è¡ -->
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(9)%></td>
            </tr>
            <%} else{ %>
             <tr>                  <!-- å¥æ°è¡ -->
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(9)%></td>
            </tr>
           <%} %>
           <%}%>
        </table>
       
        <%
          rs.close();
          stmt.close();
       	  con.close();
       %>
       	<input type="button" name="print" value="打印查询结果" onclick="window.print()" id="chaxunjieguo"> 
        <input   type="button"   name="back"   value="返回"   onclick="javascript:history.go(-1)">
        <a href="treatChaxun.jsp">导出到Excel</a>
    </div>
</div>
</body>
</html>