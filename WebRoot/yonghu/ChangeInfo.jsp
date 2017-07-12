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
	   try{
		   String usename=(String)session.getAttribute("name");
	       String names=new String(usename);
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
		   String upd="select * from JIBEN where SNAME#='"+names+"' ";
           ResultSet rs=db.queryData(con,upd);
		    if(rs!=null){
			     while(rs.next()){
			%>    
		         <h1 align="center"><STRONG>修改个人信息</STRONG></h1>
				 <form action="treatChangeInfo.jsp" method="post" >
		         <table width="500" height="180" border="1" "cellpadding="5" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="#efefef">
				   <th>姓名</th><td ><input type="text" name="name" value="<%=rs.getString("SNAME#") %>" readonly /> </td>
				       <td><font color=red>您没有这个权限修改姓名!</font></td>
				   </tr>
				   <tr bgcolor="#efefef">
				   <th>性别</th><td ><input type="text" name="sex" value="<%=rs.getString("SEX") %>" readonly /> </td>
				       <td><font color=red>您没有这个权限修改性别!</font></td>
				   </tr>
				   <tr bgcolor="white">
				   <th>年龄</th><td colspan="2"><input type="text" name="age" value="<%= String.valueOf(rs.getInt("AGE"))%>" /></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>电话</th><td colspan="2"><input type="text" name="tel" value="<%=String.valueOf(rs.getString("TEL"))%>" /></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>员工号</th><td><input type="text" name="emp" value="<%= rs.getString("EMPNUM")%>" readonly /> </td>
				     <td><font color=red>您没有这个权限修改员工号!</font></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>部门</th><td><input type="text" name="dep" value="<%= rs.getString("DEPARTMENT")%>" readonly   /></td>
				      <td><font color=red >您没有这个权限修改所属部门!</font></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>职务</th><td><input type="text" name="pname" value="<%=  rs.getString("PNAME")%>" readonly   /></td>
				     <td><font color=red >您没有这个权限修改职务!</font></td>
				   </tr>
				   <tr bgcolor="#efefef" colspan="2">
				   <th>邮箱</th><td><input type="text" name="email" value="<%=  rs.getString("EMAIL")%>" /></td>
				   </tr>
				   <tr><td></td><td><input type="submit" name="submit" value="修改" /></td>
	               <td><input type="reset" name="reset" value="取消"></td></tr>	
				     </table>
				  </form>
		   <%
		      }	
			}
		  else{
			      out.println("未查询到结果");
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
   
   
  </body>

</html>