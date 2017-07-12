<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>
<html>
  <body>
  <%      
        String usename=(String)session.getAttribute("name");
	       String names=new String(usename);
       Connection con=null;//连接
       String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
	   String users="sa";
       String userpassword="20134675";
	   try{
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
		    String useage=request.getParameter("age").trim();
            String usetel =request.getParameter("tel").trim();
		    String usemail =request.getParameter("email").trim();
		    int updateResult=0;
		    String up="update JIBEN set AGE='"+useage+"' ,TEL='"+usetel+"' ,EMAIL='"+usemail+" ' where SNAME#='"+names+"' ";
		    updateResult=db.update(con,up);
			    if(updateResult==0){%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("修改不成功")) { 
                                  window.event.returnValue = false; 
                            } 
							
                    } 
					delcfm();
				 </script><%}
				else{%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("修改成功")) { 
                                  window.event.returnValue = false; 
                            } 
                    } 
					delcfm();
				 </script><%
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
  %>
  <a href="ChangeInfo.jsp" /><h3 align="center" >返回修改页面</h3></a>
    </body>

</html>