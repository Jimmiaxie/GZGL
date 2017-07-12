<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>

<html>
  <body>
	<%          
     Connection con=null;//连接
     String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
	 
     String users="sa";
     String userpassword="20134675";
	 String dnumber=request.getParameter("number");

     try{ 	
	      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  con=DriverManager.getConnection(url,users,userpassword);
		 
		 
		  
		       String upd="select * from JIBEN where EMPNUM='"+dnumber+"'"; 
               ResultSet rs=db.queryData(con,upd);
		       if(rs!=null)
			   {
			     while(rs.next())
				{
				%>	
				   <h1 align="center"><STRONG>个人信息</STRONG></h1>
				   <form action="treatDelete.jsp" method="post">
				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>姓名</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>员工号</th><td><input type="text" name="emp" value="<%= rs.getString("EMPNUM")%>" readonly></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>年龄</th><td><%= String.valueOf(rs.getInt("AGE"))%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>电话</th><td><%= String.valueOf(rs.getString("TEL"))%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>部门</th><td><%= rs.getString("DEPARTMENT")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>职务</th><td><%=  rs.getString("PNAME")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>邮箱</th><td><%=  rs.getString("EMAIL")%></td>
				   </tr>
			       <tr><td><input type="submit" name="delete" value="删除"/></td>
				   <td><input type="reset" name="reset" value="取消"><a href="DeleteInfo.jsp">返回</a></td>
				   </tr>
		           </table>
			 <%	 }
			   }else
			   {
				   out.println("没有此用户");
			   } 
	 		 } catch(SQLException sqle){
		 out.println(sqle.getMessage());
	 }
	catch(Exception e){
		  out.println(e.getMessage());
	 }
	 finally{
		  try{
			 if(con!=null){
				 con.close();
			 }
		  }
		  catch(SQLException sqle){
		 out.println(sqle.getMessage());
	  }
	 }	 
		  %></form>
	 </body>
</html>