<%@page contentType="text/html;charset=gbk"%>
<html>
  <body>
      <script language="javascript"> 
      function delcfm() { 
        if (!confirm("ȷ��Ҫ�޸ģ�")) { 
            window.event.returnValue = false; 
        } 
     } 
   </script>
      <form action="treatChangepass.jsp" method="post" >
		 <h1 align="center"><STRONG>�޸�����</STRONG></h1>
		 <table width="350" height="200" border="1" "cellpadding="10" cellspacing="1" 
	    bordercolor="#3F8805" style="border-collaspe" align="center" id="Table1">
		<tr><th>���������</th><td colspan="4"><input type="password"   name="oldpass" style="width:200px; height:30px;" /></td></tr>
        <tr><th>����������</th><td colspan="4"><input type="password" name="newpassword" style="width:200px; height:30px;"/></td></tr>
        <tr><th>ȷ������</th><td colspan="4"><input type="password" name="newpasswords" style="width:200px; height:30px;"/></td></tr>
		<tr><td><input type="submit" name="submit" value="�޸�" onClick="delcfm()"/></td>
	    <td><input type="reset" name="reset" value="ȡ��"></td></tr>
	  </table>
	</form>
  </body>
</html>