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
	   
       try{ String usename=(String)session.getAttribute("name");
	       String names=new String(usename);
		  
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
		   String upd="select * from JIBEN where SNAME#='"+names+"'";
           ResultSet rs=db.queryData(con,upd);
		 
		   if(rs!=null){
			     while(rs.next()){
				%>	
				   
				   <h1 align="center"><STRONG>������Ϣ</STRONG></h1>
				   <table width="600" height="300" border="1" "cellpadding="10" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="#efefef">
				   <th>����</th><td><%=rs.getString("SNAME#")%></td>
				   </tr>
				   <tr bgcolor="white">
				   <th>����</th><td><%= String.valueOf(rs.getInt("AGE"))%></td>
				   </tr>
				   <tr bgcolor="white">
				   <th>�Ա�</th><td><%= String.valueOf(rs.getString("SEX"))%></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>�绰</th><td><%= String.valueOf(rs.getString("TEL"))%></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>Ա����</th><td><%= rs.getString("EMPNUM")%></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>����</th><td><%= rs.getString("DEPARTMENT")%></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>ְ��</th><td><%=  rs.getString("PNAME")%></td>
				   </tr>
				   <tr bgcolor="#efefef">
				   <th>����</th><td><%=  rs.getString("EMAIL")%></td>
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