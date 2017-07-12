<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">

	<title>财务管理系统</title>
    <link href="newindex.css" rel="stylesheet" type="text/css"/>
    
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
                    document.getElementById('mainx6').style.display = "none";
                    document.getElementById('mainx7').style.display = "none";
                    break;
                }
                case 2:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "";
                    document.getElementById('mainx3').style.display = "none";
                    document.getElementById('mainx4').style.display = "none";
                    document.getElementById('mainx5').style.display = "none";
                    document.getElementById('mainx6').style.display = "none";
                    document.getElementById('mainx7').style.display = "none";
                    break;
                }
                case 3:{
                    document.getElementById('bottom').style.display = "";
                    document.getElementById('jibengongzi').style.display = "";
                    document.getElementById('yonghuxinxichaxun').style.display = "none";
                    document.getElementById('chaxungongzi').style.display = "none";
                    document.getElementById('chaxunjiangxuejin').style.display = "none";
                    document.getElementById('tianjiaxinxi').style.display = "none";
                    document.getElementById('xiugaixinxi').style.display = "none";
                    document.getElementById('shanchuxinxi').style.display = "none";
                    break;
                }
                case 4:{
                    document.getElementById('jibengongzi').style.display = "none";
                    document.getElementById('bottom').style.display = "";
                    document.getElementById('yonghuxinxichaxun').style.display = "";
                    document.getElementById('chaxungongzi').style.display = "none";
                    document.getElementById('chaxunjiangxuejin').style.display = "none";
                    document.getElementById('tianjiaxinxi').style.display = "";
                    document.getElementById('xiugaixinxi').style.display = "";
                    document.getElementById('shanchuxinxi').style.display = "";
                    break;
                }
                case 6:{
                    document.getElementById('bottom').style.display = "";
                    document.getElementById('jibengongzi').style.display = "none";
                    document.getElementById('yonghuxinxichaxun').style.display = "none";
                    document.getElementById('chaxungongzi').style.display = "";
                    document.getElementById('chaxunjiangxuejin').style.display = "";
                    document.getElementById('tianjiaxinxi').style.display = "none";
                    document.getElementById('xiugaixinxi').style.display = "none";
                    document.getElementById('shanchuxinxi').style.display = "none";
                    break;
                }
                case 7:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
                    document.getElementById('mainx3').style.display = "";
                    document.getElementById('mainx4').style.display = "none";
                    document.getElementById('mainx5').style.display = "none";
                    document.getElementById('mainx6').style.display = "none";
                     document.getElementById('mainx7').style.display = "none";
                    break;
                }
                 case 8:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
                    document.getElementById('mainx3').style.display = "none";
                    document.getElementById('mainx4').style.display = "";
                    document.getElementById('mainx5').style.display = "none";
                    document.getElementById('mainx6').style.display = "none";
                     document.getElementById('mainx7').style.display = "none";
                    break;
                }
                case 9:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
                    document.getElementById('mainx3').style.display = "none";
                    document.getElementById('mainx4').style.display = "none";
                    document.getElementById('mainx5').style.display = "";
                    document.getElementById('mainx6').style.display = "none";
                     document.getElementById('mainx7').style.display = "none";
                    break;
                }
                case 10:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
                    document.getElementById('mainx3').style.display = "none";
                    document.getElementById('mainx4').style.display = "none";
                    document.getElementById('mainx5').style.display = "none";
                    document.getElementById('mainx6').style.display = "";
                     document.getElementById('mainx7').style.display = "none";
                    break;
                }
                 case 11:{
                    document.getElementById('mainx').style.display = "none";
                    document.getElementById('mainx2').style.display = "none";
                    document.getElementById('mainx3').style.display = "none";
                    document.getElementById('mainx4').style.display = "none";
                    document.getElementById('mainx5').style.display = "none";
                    document.getElementById('mainx6').style.display = "none";
                    document.getElementById('mainx7').style.display = "";
                     
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
                <li>欢迎登陆工资管理系统!
                <li><a href="login.jsp" onclick="click(4)">退出</a>
            </ul>
    </div>

    <div id="pagebody"><!--页面主体-->
        <div id="sidebar"><!--侧边栏-->
            <div class="box"> <div class="top"></div>
                <div id="bottom" style="display: none">
                <ul>
                    <li><a href="#" onclick="changeBody(8)" id="yonghuxinxichaxun">用户信息查询</a>
                    <li><a href="#" onclick="changeBody(9)" id="tianjiaxinxi">添加用户信息</a>
                    <li><a href="#" onclick="changeBody(10)" id="xiugaixinxi">修改用户信息</a>
                    <li><a href="#" onclick="changeBody(11)" id="shanchuxinxi">删除用户信息</a>
                    <li><a href="#" onclick="changeBody(1)" id="chaxungongzi">查询工资</a>
                    <li><a href="#" onclick="changeBody(2)" id="chaxunjiangxuejin">查询奖学金</a>
                    <li><a href="#" onclick="changeBody(7)" id="jibengongzi">基本工资管理</a>
                </ul>
                 </div>
                <div class="bot"></div></div>
        </div>
        <div id="mainbody"><!--主体内容-->
            <div id="footer">
            <a href="#" onclick="changeBody(3)">基本工资管理</a>
            <a href="#" onclick="changeBody(4)">用户信息管理</a>
            <a href="#" onclick="changeBody(6)">工资查询</a>
            </div>
        </div>

        <div id="mainx" style="display: none">
            <iframe src="chaxun1.html" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0"></iframe>
        </div>

        <div id="mainx2" style="display: none">
            <iframe src="chaxun2.html" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
         <div id="mainx3" style="display: none">
            <iframe src="chaxun2.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
         <div id="mainx4" style="display: none">
            <iframe src="infomanager.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
        <div id="mainx5" style="display: none">
            <iframe src="Addemploy.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
        <div id="mainx6" style="display: none">
            <iframe src="ChangeEmpInfo.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
        <div id="mainx7" style="display: none">
            <iframe src="DeleteInfo.jsp" width="821" height="420"  frameborder="no" border="0" marginwidth="0" marginheight="0" ></iframe>
        </div>
    </div>

        <div id="text">Copyright @ 2015-6-7 AllRight Reserved
            <br/>软件一班***小组版权所有
        </div><!--页面底部-->
</div>
</div>
</body>
</html>
