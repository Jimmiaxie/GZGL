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
	   String dnumber=request.getParameter("number").trim();

       try{
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
		   Statement stmt=con.createStatement();
		  
			String upd="select EMPNUM from JIBEN where EMPNUM='" +dnumber+ "'";
           ResultSet rs=db.queryData(con,upd);
		
			 if(rs==null)
			{
			      out.println("该用户已存在！");
			 }
			 else
			{
				 String name=request.getParameter("name");
				  String names=new String(name.getBytes("ISO-8859-1"),"gbk");
				 String age=request.getParameter("age");
				  String sex=request.getParameter("sex");
				  String sexs=new String(sex.getBytes("ISO-8859-1"),"gbk");
				 String tel=request.getParameter("tel");
				 String department=request.getParameter("department");
				  String departments=new String(department.getBytes("ISO-8859-1"),"gbk");
				  String pname=request.getParameter("pname");
				  String pnames=new String(pname.getBytes("ISO-8859-1"),"gbk");
				  String email=request.getParameter("email");
			     String up="insert into JIBEN "+"(SNAME#,SEX,AGE,TEL,EMPNUM,DEPARTMENT,PNAME,EMAIL)"+
				 "values"+"('"+names+"','"+sexs+"','"+age+"','"+tel+"','"+dnumber+"','"+departments+"','"+pnames+"','"+email+"')";
				
				 int updateResult=0;
			    updateResult=db.update(con,up);
			    if(updateResult==0)
				{%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("添加不成功"))
							 { 
                                  window.event.returnValue = false; 
                            } 
							
                    } 
					delcfm();
				 </script><%}
				else{%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("添加成功")) 
							{ 
                                  window.event.returnValue = false; 
                            } 
                    } 
					delcfm();
				 </script><%
				} 
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
	<a href="Addemploy.jsp"><h3 align="center" >返回添加页面</h3></a>
</html>