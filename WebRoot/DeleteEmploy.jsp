<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>

<html>
  <body>
	<%          
     Connection con=null;//����
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
				   <h1 align="center"><STRONG>������Ϣ</STRONG></h1>
				   <form action="treatDelete.jsp" method="post">
				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>����</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>Ա����</th><td><input type="text" name="emp" value="<%= rs.getString("EMPNUM")%>" readonly></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>����</th><td><%= String.valueOf(rs.getInt("AGE"))%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>�绰</th><td><%= String.valueOf(rs.getString("TEL"))%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>����</th><td><%= rs.getString("DEPARTMENT")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>ְ��</th><td><%=  rs.getString("PNAME")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>����</th><td><%=  rs.getString("EMAIL")%></td>
				   </tr>
			       <tr><td><input type="submit" name="delete" value="ɾ��"/></td>
				   <td><input type="reset" name="reset" value="ȡ��"><a href="DeleteInfo.jsp">����</a></td>
				   </tr>
		           </table>
			 <%	 }
			   }else
			   {
				   out.println("û�д��û�");
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