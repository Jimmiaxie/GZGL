<%@page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*" pageEncoding="gbk"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<html>
  <body> 

<jsp:useBean id="mdb" class="com.wgw.dao.Usermain" scope="request"/>
<%
	    
		request.setCharacterEncoding("gbk");
	    response.setContentType("text/html;charset=GBK");
        
		String action=request.getParameter("action");
		Connection con=null;//连接
	        String name = request.getParameter("name").trim();  
            String password =request.getParameter("password").trim();  
            String role=request.getParameter("role").trim();

          if(name.equals("")||name==null||password==null||password.equals(""))
		   {%>
			   	<jsp:include page="login.jsp" /> 
				<hr/> 
			  <%    out.println("请输入用户名或密码");

		   }
		    else
			{
				 String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
				 String users="sa";
				 String userpassword="20134675";
	      
				try 
				{
					/*完成查询*/
				    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		            con=DriverManager.getConnection(url,users,userpassword);
					String upd="select * from DENGLU where SNAME# ='"+name+"'";
					ResultSet rs=mdb.queryData(con,upd);
         			/*根据数据库信息判断是否登录*/
					if(rs!=null)
					 {   
						while(rs.next())
						{
							String dname=rs.getString("SNAME#").trim();
							String dpassword=rs.getString("PASSWORD").trim();
							String drole=rs.getString("CHARACTOR").trim();
							
							if(dname.equals(name) && dpassword.equals(password) && drole.equals(role))
							{
								if(drole.equals("0"))
								{  %>
									<jsp:forward page="newindex.jsp"/>
							<%	 }
								else
								{ %>
									<jsp:forward page="yonghu/Userr.jsp"/>
					<%			}
							}
							else
							{%>
									<jsp:include page="login.jsp" /> 
									<hr/> 
						<%			out.println("用户名或密码或权限错误");
							}
						}
						
					 }
					else
					{  %>
							<jsp:include page="login.jsp" /> 
							<hr/> 
					<%		out.println("该用户不存在");			
					}
				} catch(SQLException e){
						e.printStackTrace();
				} finally{
						try{
							if(con!=null)
								con.close();
						}catch(SQLException e){
							e.printStackTrace();
						} 
				}
			}
	
%>
   </body>
</html>