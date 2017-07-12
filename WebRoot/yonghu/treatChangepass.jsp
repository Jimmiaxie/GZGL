<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>
 <%      
         String usename=(String)session.getAttribute("name");
	      String names=new String(usename);
          Connection con=null;//连接
          String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
	      String users="sa";
          String userpassword="20134675";
	         String pass = request.getParameter("oldpass").trim();  
           String password =request.getParameter("newpassword").trim();
           String passwords =request.getParameter("newpasswords").trim();
		   if(pass.equals("")||pass==null){%>
					<script language="javascript"> 
                            function delcfm() { 
                                     if (!alert("请输入旧密码")) { 
                                       window.event.returnValue = false; 
                                    } 
                               } 
							delcfm();
					 </script><%}
            else if(password==null||password.equals("")){%>
				<script language="javascript"> 
                           function delcfm() { 
                                     if (!alert("请输入新密码")) { 
                                       window.event.returnValue = false; 
                                    } 
                               } 
							delcfm();
					</script><%}
		      
           else if(passwords==null||passwords.equals("")){%>
				<script language="javascript"> 
                           function delcfm() { 
                                     if (!alert("请确认新密码")) { 
                                       window.event.returnValue = false; 
                                    } 
                               } 
							delcfm();
					</script><%}   
		     else {
				  try{
	                      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		                  con=DriverManager.getConnection(url,users,userpassword);
		                  String upd="select PASSWORD from DENGLU where  SNAME#='"+names+"'";
                          ResultSet rs=db.queryData(con,upd);
				          if(rs!=null){
			                 while(rs.next()){
					          
							   if(!password.equals(passwords)){%>
								      <script language="javascript"> 
                                        function delcfm() { 
                                          if (!alert("密码不匹配")) { 
                                        window.event.returnValue = false; 
                                    } 
                                      } 
									 delcfm();
							   </script><%}
								else if(!pass.equals(rs.getString("PASSWORD").trim())){%>
								        <script language="javascript"> 
                                        function delcfm() { 
                                          if (!alert("您输入的旧密码不对，请重新输入")) { 
                                        window.event.returnValue = false; 
                                    } 
                                      } 
									 delcfm();
							   </script><%}
						        else{
									   
									   int updateResult=0;
									   String up="update DENGLU set PASSWORD='"+password+"' where SNAME#='"+names+"' ";
									   updateResult=db.update(con,up);
									    if(updateResult==0){%>
								        <script language="javascript"> 
                                        function delcfm() { 
                                          if (!alert("您输入的旧密码不对，请重新输入")) { 
                                        window.event.returnValue = false; 
                                    } 
                                      } 
									 delcfm();
							   </script><%}
									    else{%>
								        <script language="javascript"> 
                                        function delcfm() { 
                                          if (!alert("修改密码成功")) { 
                                        window.event.returnValue = false; 
                                    } 
                                      } 
									 delcfm();
							   </script><%}
									      
									}
							 }
						  }
						  else{
							    out.println("未查询到该用户");
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
			                 if(con!=null)
				             con.close();
                        }
		               catch(SQLException sqle){
		                  out.println(sqle.getMessage());
	                   }
				  }
		   }
%>
<a href="ChangePass.jsp" /><h3 align="center" >返回密码修改页面</h3></a>
	 