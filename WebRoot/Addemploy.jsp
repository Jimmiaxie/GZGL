<%@ page language="java" pageEncoding="GBK" contentType="text/html;charset=gbk"%>


<%@page import="java.sql.*"%>
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>
<html>
  <body>

        <h1 align="center"><STRONG>����û�</STRONG></h1>
		    <form action="treatAdd.jsp" method="post" >

				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>����</th><td><input type="text" name="name" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>Ա����</th><td><input type="text" name="number" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>�Ա�</th><td><input type="radio" name="sex" value="��">��<input type="radio" name="sex" value="Ů">Ů</td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>����</th><td><input type="text" name="age" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>�绰</th><td><input type="text" name="tel" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>����</th><td><input type="text" name="department" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>ְ��</th><td><input type="text" name="pname" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>����</th><td><input type="text" name="email" ></td>
				   </tr> 
				   <input type="submit" name="zengjia" value="����">
	              
   

  
   </table>
  </body>

</html>