<%@page contentType="text/html;charset=GBK"%>

<!DOCTYPE html>
<html>
<head lang="en">
      <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>财务管理系统</title>
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
 
<div id="container"><!--页面层容器-->
    <div id="header"><!--页面头部-->
        <div id="menu">
            <ul>
			    <% 
				 request.setCharacterEncoding("GBK"); 
				 String name=request.getParameter("name");
		         if(name!=null){
			  %>
				 <li>您好,<%=new String(name) %>! <%}
				 session.setAttribute("name",name);%>
                <li><a href="/GZGL/login.jsp" onclick="click(4)">退出</a>
            </ul>
    </div>

    <div id="pagebody"><!--页面主体-->
        <div id="sidebar"><!--侧边栏-->
            <div class="box"> <div class="top"></div>
                <div id="bottom">
                <ul>
                    <li><a href="#" onclick="changeBody(1)" >查询个人信息</a>
                    <li><a href="#" onclick="changeBody(2)" >查询个人工资</a>
					<li><a href="#" onclick="changeBody(3)" >修改个人信息</a>
					<li><a href="#" onclick="changeBody(4)" >修改密码</a>
					<li><a href="#" onclick="changeBody(5)" >帮助</a>
					
				</ul>
                 </div>
                <div class="bot"></div></div>
        </div>
        <div id="mainbody"><!--主体内容-->
		    
			 
            <div id="footer">
			   <a href="#" target=_self>欢迎登陆工资管理系统</a>
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
            <br/>软件一班***小组版权所有
        </div><!--页面底部-->
</div>
</div>
</body>
</html>