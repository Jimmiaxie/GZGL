<%@page contentType="text/html;charset=GBK"%>

<!DOCTYPE html>
<html>
<head lang="en">
      <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>�������ϵͳ</title>
    <link href="yonghu/css.css" rel="stylesheet" type="text/css"/>
    <script  language="JavaScript" type="text/JavaScript">
		function click(index){
     		
     		if(index == 4){
     		window.close();
     		}
     	}    
    
        function changeBody(index){
            switch(index){
                case 1:{
                    document.getElementById('mainx').style.display = "";
                    document.getElementById('mainx2').style.display = "none";
					document.getElementById('mainx3').style.display = "none";
					document.getElementById('mainx4').style.display = "none";
					document.getElementById('mainx5').style.display = "none";
                    break;
                }
                case 2:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "";
					document.getElementById('mainx3').style.display = "none";
					document.getElementById('mainx4').style.display = "none";
					document.getElementById('mainx5').style.display = "none";
                    break;
                }
				case 3:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
					document.getElementById('mainx3').style.display = "";
					document.getElementById('mainx4').style.display = "none";
					document.getElementById('mainx5').style.display = "none";
                    break;
                }
				case 4:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
					document.getElementById('mainx3').style.display = "none";
					document.getElementById('mainx4').style.display = "";
					document.getElementById('mainx5').style.display = "none";
                    break;
                }
				case 5:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
					document.getElementById('mainx3').style.display = "none";
					document.getElementById('mainx4').style.display = "none";
					document.getElementById('mainx5').style.display = "";
                    break;
                }
				
            }
        }
    </script>
</head>
<body>
 
<div id="container"><!--ҳ�������-->
    <div id="header"><!--ҳ��ͷ��-->
        <div id="menu">
            <ul>
			    <% 
				 request.setCharacterEncoding("GBK"); 
				 String name=request.getParameter("name");
		         if(name!=null){
			  %>
				 <li>����,<%=new String(name) %>! <%}
				 session.setAttribute("name",name);%>
                <li><a href="/GZGL/login.jsp" onclick="click(4)">�˳�</a>
            </ul>
    </div>

    <div id="pagebody"><!--ҳ������-->
        <div id="sidebar"><!--�����-->
            <div class="box"> <div class="top"></div>
                <div id="bottom">
                <ul>
                    <li><a href="#" onclick="changeBody(1)" >��ѯ������Ϣ</a>
                    <li><a href="#" onclick="changeBody(2)" >��ѯ���˹���</a>
					<li><a href="#" onclick="changeBody(3)" >�޸ĸ�����Ϣ</a>
					<li><a href="#" onclick="changeBody(4)" >�޸�����</a>
					<li><a href="#" onclick="changeBody(5)" >����</a>
					
				</ul>
                 </div>
                <div class="bot"></div></div>
        </div>
        <div id="mainbody"><!--��������-->
		    
			 
            <div id="footer">
			   <a href="#" target=_self>��ӭ��½���ʹ���ϵͳ</a>
            </div>
        </div>
         
        <div id="mainx" style="display: none">
            <iframe src="yonghu/UserInfo1.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
        </div>

        <div id="mainx2" style="display: none">
            <iframe src="yonghu/UserInfo.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
        </div>
		<div id="mainx3" style="display: none">
            <iframe src="yonghu/ChangeInfo.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
		<div id="mainx4" style="display: none">
            <iframe src="yonghu/ChangePass.jsp"   width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
		<div id="mainx5" style="display: none">
            <iframe src="yonghu/Help.jsp"   width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
        </div>
    </div>
     
        <div id="text">Copyright @ 2015-6-7 AllRight Reserved
            <br/>���һ��***С���Ȩ����
        </div><!--ҳ��ײ�-->
</div>
</div>
</body>
</html>