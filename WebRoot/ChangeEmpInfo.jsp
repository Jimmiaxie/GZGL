<%@page contentType="text/html;charset=gbk"%>
<%@page import="java.sql.*"%>
	
<jsp:useBean id="db" class="com.wgw.dao.Usermain" scope="session"/>
	
<html>
  <body>
      <form action="ShowChanInfo.jsp" method="post" >

	    <th><input type="text" name="number" >
		<input type="submit" name="²éÑ¯" />
		<input type="hidden" name="action" value="check">
	    <hr/>
	 	
	  </form>
  </table>
  
  </body>
</html>