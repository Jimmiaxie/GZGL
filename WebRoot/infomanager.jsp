<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%>

<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="request"/>
<html>
  <body>    
  <form action="infomanager.jsp" method="post">
   <input type="text" name="number" />
	<input type="submit" name="��ѯ" />
	<input type="hidden" name="action" value="check">
	<hr/>
<%          
     Connection con=null;//����
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
				   <h1 align="center"><STRONG>������Ϣ</STRONG></h1>
				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>����</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>�Ա�</th><td><%= rs.getString("SEX")%></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>Ա����</th><td><%= rs.getString("EMPNUM")%></td>
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
				   
			<%   }	
			    }
		        else
			   {
			        out.println("δ��ѯ�����");
		       }		   
		     }
			 }
		   else
		   {
			   out.println("������Ա����");
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