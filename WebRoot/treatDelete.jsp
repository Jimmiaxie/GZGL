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
	 String numbers=request.getParameter("emp");

     try{ 	
	      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  con=DriverManager.getConnection(url,users,userpassword);
		 
				int  updateResult=0;
				String up="delete  from JIBEN where EMPNUM='"+numbers+"'";
				updateResult=db.update(con,up);
					 if(updateResult==0){%>
						<script language="javascript"> 
						function delcfm() { 
                           if (!alert("删除不成功")) { 
                                  window.event.returnValue = false; 
                            } 
						
                    } 
					delcfm();
				 </script><%}
					else{%>
						<script language="javascript"> 
						function delcfm() { 
                           if (!alert("删除成功")) { 
                                  window.event.returnValue = false; 
                            } 
                    } 
					delcfm();
				 </script><%
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
		 
		 }  %>

    </body>
	 </body>
	 <a href="DeleteInfo.jsp"><h3 align="center" >返回删除页面</h3></a>
</html>