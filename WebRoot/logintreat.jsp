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
		Connection con=null;//����
	        String name = request.getParameter("name").trim();  
            String password =request.getParameter("password").trim();  
            String role=request.getParameter("role").trim();

          if(name.equals("")||name==null||password==null||password.equals(""))
		   {%>
			   	<jsp:include page="login.jsp" /> 
				<hr/> 
			  <%    out.println("�������û���������");

		   }
		    else
			{
				 String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
				 String users="sa";
				 String userpassword="20134675";
	      
				try 
				{
					/*��ɲ�ѯ*/
				    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		            con=DriverManager.getConnection(url,users,userpassword);
					String upd="select * from DENGLU where SNAME# ='"+name+"'";
					ResultSet rs=mdb.queryData(con,upd);
         			/*�������ݿ���Ϣ�ж��Ƿ��¼*/
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
						<%			out.println("�û����������Ȩ�޴���");
							}
						}
						
					 }
					else
					{  %>
							<jsp:include page="login.jsp" /> 
							<hr/> 
					<%		out.println("���û�������");			
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