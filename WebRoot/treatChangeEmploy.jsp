<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="request"/>
<html>
  <body>
  <%      
       Connection con=null;//连接
       String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GZGL";
	   String users="sa";
       String userpassword="20134675";
	   try{
	       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con=DriverManager.getConnection(url,users,userpassword);
			String dnames=request.getParameter("name").trim();
			String names=new String(dnames.getBytes("ISO-8859-1"),"gbk");
			String number=request.getParameter("emp");
			String sex=request.getParameter("sex");
			String sexs=new String(sex.getBytes("ISO-8859-1"),"gbk");
			String age=request.getParameter("age").trim();
			String tels=request.getParameter("tel").trim();
		    String departments=request.getParameter("dep").trim();
			String department=new String(departments.getBytes("ISO-8859-1"),"gbk");
            String empnames =request.getParameter("pname").trim();
			String empname=new String(empnames.getBytes("ISO-8859-1"),"gbk");
			String emails=request.getParameter("email").trim();

		     int updateResult=0;
		    String up="update JIBEN set SNAME#='"+names+"',SEX='"+sexs+"',AGE='"+age+"',TEL='"+tels+"',EMPNUM='"+number+"',DEPARTMENT='"+department+"' ,PNAME='"+empname+"',EMAIL='"+emails+"' where EMPNUM='" +number+ "'";
		    updateResult=db.update(con,up);
			    if(updateResult==0){%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("修改不成功!")) { 
                                  window.event.returnValue = false; 
                            } 
							
                    } 
					delcfm();
				 </script><%}
				else{%>
					<script language="javascript"> 
					function delcfm() { 
                           if (!alert("修改成功!")) { 
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
  <a href="ChangeEmpInfo.jsp" /><h3 align="center" >返回修改页面</h3></a>
    </body>

</html>