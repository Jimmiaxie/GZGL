<%@page contentType="text/html;charset=gbk"%>

<%@page import="java.sql.*"%>

<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>

<html>
  <body>
  <%      
       Connection con=null;//����
       String url="jdbc:sqlserver://localhost:1433; DatabaseName=GZGL";
	   String users="sa";
       String userpassword="20134675";
	   try{
		   String usename=(String)session.getAttribute("name");
	       String names=new String(usename);
	       
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
		   String upd="select * from YUEGONGZI where SNAME#='"+names+"'";
         
           ResultSet rs=db.queryData(con,upd);
		   
		   if(rs!=null){
			     while(rs.next()){
			%>	
				    <h1 align="center"><STRONG>���˹���</STRONG></h1>
				    <h1 align="center" ><font color=red>���ս�:<%=rs.getInt("SALSUM")%></font><h1>
					<table width="500" border="1" "cellpadding="3" cellspacing="1" 
				    bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>����</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>Ա����</th><td><%= rs.getString("EMPNUM")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>��������</th><td><%= String.valueOf(rs.getInt("SALARY"))%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>����</th><td><%= String.valueOf(rs.getInt("ALLOWANCE"))%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>�ܹ���</th><td><%= String.valueOf(rs.getInt("SALSUM"))%></td>
				   </tr>
				 
	
			<%
			    }
		    }
		  else{
			      out.println("δ��ѯ�����");
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