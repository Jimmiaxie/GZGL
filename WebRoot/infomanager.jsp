<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="request"/>
<html>
  <body>    
  <form action="infomanager.jsp" method="post">
   <input type="text" name="number" />
	<input type="submit" name="查询" />
	<input type="hidden" name="action" value="check">
	<hr/>
<%          
     Connection con=null;//连接
     String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
	 
     String users="sa";
     String userpassword="20134675";
	 String action=request.getParameter("action");
	 String number=request.getParameter("number");

     try{
	      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  con=DriverManager.getConnection(url,users,userpassword);
		  if(action!=null)
		 {
		     if(action.equals("check"))
             {
			   
               String upd="select * from JIBEN where EMPNUM='"+number+"'";
			  
               ResultSet rs=db.queryData(con,upd);
		       if(rs!=null)
			   {
			     while(rs.next())
				{
				%>	
				   <h1 align="center"><STRONG>个人信息</STRONG></h1>
				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>姓名</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>性别</th><td><%= rs.getString("SEX")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>员工号</th><td><%= rs.getString("EMPNUM")%></td>
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
				   
			<%   }	
			    }
		        else
			   {
			        out.println("未查询到结果");
		       }		   
		     }
			 }
		   else
		   {
			   out.println("请输入员工号");
		   }
	 }
	 catch(SQLException sqle){
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
  %>
   </table>
  </body>
</html>