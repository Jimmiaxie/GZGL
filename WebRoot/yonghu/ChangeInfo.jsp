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
		         <h1 align="center"><STRONG>�޸ĸ�����Ϣ</STRONG></h1>
				 <form action="treatChangeInfo.jsp" method="post" >
		         <table width="500" height="180" border="1" "cellpadding="5" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="#efefef">
				   <th>����</th><td ><input type="text" name="name" value="<%=rs.getString("SNAME#") %>" readonly /> </td>
				       <td><font color=red>��û�����Ȩ���޸�����!</font></td>
				   </tr>
				   <tr bgcolor="#efefef">
				   <th>�Ա�</th><td ><input type="text" name="sex" value="<%=rs.getString("SEX") %>" readonly /> </td>
				       <td><font color=red>��û�����Ȩ���޸��Ա�!</font></td>
				   </tr>
				   <tr bgcolor="white">
				   <th>����</th><td colspan="2"><input type="text" name="age" value="<%= String.valueOf(rs.getInt("AGE"))%>" /></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>�绰</th><td colspan="2"><input type="text" name="tel" value="<%=String.valueOf(rs.getString("TEL"))%>" /></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>Ա����</th><td><input type="text" name="emp" value="<%= rs.getString("EMPNUM")%>" readonly /> </td>
				     <td><font color=red>��û�����Ȩ���޸�Ա����!</font></td>
				   </tr>
				    <tr bgcolor="#efefef">
				   <th>����</th><td><input type="text" name="dep" value="<%= rs.getString("DEPARTMENT")%>" readonly   /></td>
				      <td><font color=red >��û�����Ȩ���޸���������!</font></td>
				   </tr>
				    <tr bgcolor="white">
				   <th>ְ��</th><td><input type="text" name="pname" value="<%=  rs.getString("PNAME")%>" readonly   /></td>
				     <td><font color=red >��û�����Ȩ���޸�ְ��!</font></td>
				   </tr>
				   <tr bgcolor="#efefef" colspan="2">
				   <th>����</th><td><input type="text" name="email" value="<%=  rs.getString("EMAIL")%>" /></td>
				   </tr>
				   <tr><td></td><td><input type="submit" name="submit" value="�޸�" /></td>
	               <td><input type="reset" name="reset" value="ȡ��"></td></tr>	
				     </table>
				  </form>
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
   
   
  </body>

</html>