<%@ page language="java" pageEncoding="GBK" contentType="text/html;charset=gbk"%>


<%@page import="java.sql.*"%>
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>
<html>
  <body>

        <h1 align="center"><STRONG>添加用户</STRONG></h1>
		    <form action="treatAdd.jsp" method="post" >

				   <table width="500" border="1" "cellpadding="3" cellspacing="1" 
				   bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
				   <tr bgcolor="pink">
				   <th>姓名</th><td><input type="text" name="name" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>员工号</th><td><input type="text" name="number" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>性别</th><td><input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女">女</td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>年龄</th><td><input type="text" name="age" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>电话</th><td><input type="text" name="tel" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>部门</th><td><input type="text" name="department" ></td>
				   </tr>
				    <tr bgcolor="pink">
				   <th>职务</th><td><input type="text" name="pname" ></td>
				   </tr>
				   <tr bgcolor="pink">
				   <th>邮箱</th><td><input type="text" name="email" ></td>
				   </tr> 
				   <input type="submit" name="zengjia" value="增加">
	              
   

  
   </table>
  </body>

</html>