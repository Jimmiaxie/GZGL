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
		 String number =request.getParameter("number");
	     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  con=DriverManager.getConnection(url,users,userpassword);
               String upd="select * from JIBEN where EMPNUM='" +number+ "' ";
               ResultSet rs=db.queryData(con,upd);
		       if(rs!=null)
			   { 
					while(rs.next())
					{ %>
						
						<h1 align="center"><STRONG>修改用户信息</STRONG></h1>
						<form action="treatChangeEmploy.jsp" method="post">
						<table width="500" border="1" "cellpadding="3" cellspacing="1" 
							bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
						<tr bgcolor="pink">
						<th>姓名</th><td><input type="text" name="name" value=" <%=rs.getString("SNAME#") %>" /></td>
						</tr>
						<tr bgcolor="pink">
						<th>性别</th><td>
						<% if(rs.getString("SEX").equals("女")){ %>
						<input type="radio" name="sex" checked value=<%=rs.getString("SEX")%>><%= rs.getString("SEX")%>
						<input type="radio" name="sex"  value="男">男
						<%} else if(rs.getString("SEX").equals("男")){ %>
						<input type="radio" name="sex" checked value=<%=rs.getString("SEX")%>><%= rs.getString("SEX")%>
						<input type="radio" name="sex" value="女">女
						<%}%>
						</td>
						</tr>
						<tr bgcolor="pink">
						<th>员工号</th><td><input type="text" name="emp" value="<%= rs.getString("EMPNUM")%>" /></td>
						</tr>
						<tr bgcolor="pink">
						<th>年龄</th><td ><input type="text" name="age" value=" <%= String.valueOf(rs.getInt("AGE"))%>" /></td>
						</tr>
						<tr bgcolor="pink">
						<th>电话</th><td><input type="text" name="tel" value=" <%=String.valueOf(rs.getString("TEL"))%>" /></td>
						</tr>
						<tr bgcolor="pink">
						<th>部门</th><td><input type="text" name="dep" value="<%= rs.getString("DEPARTMENT")%>"/></td>
						</tr>
						<tr bgcolor="pink">
						<th>职务</th><td><input type="text" name="pname" value="<%=  rs.getString("PNAME")%>" /></td>
						</tr>
						<tr bgcolor="pink">
						<th>邮箱</th><td><input type="text" name="email" value="<%=  rs.getString("EMAIL")%>" /></td>
						</tr>
						<tr><td><input type="submit" name="submit" value="修改"></td>
						<td><input type="reset" name="reset" value="取消"><a href="ChangeEmpInfo.jsp">返回</a></td></tr>
						</table>						
						</form>
				<%	}
			      
			  }
			  else
			  {
			        out.println("未查询到结果");
		      }				  
	  }catch(SQLException sqle){
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
		 
   } %>

  </table>
  
  </body>
</html>