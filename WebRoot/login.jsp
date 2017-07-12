<%@page contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>工资管理系统</title>
    <link rel="stylesheet" href="login.css" type="text/css">
  </head>
<body>
<div id="container"><!--页面层容器-->

    <div id="header"><!--页面头部-->
        <div id="title">
            工资管理系统
        </div>
    </div>

        <div id="mainbody"><!--主体内容-->

            <form action="logintreat.jsp" method="post" >
                <table>
                    <tr><th>姓名:</th><td><input type="text" name="name" /></td></tr>
                    <tr><th>密码:</th><td><input type="password" name="password"/></td></tr>
                    <tr><th>权限:</th><td><input type="radio" name="role" value=1 checked/>用户
                        <input type="radio" name="role"   value=0  />管理员</td></tr>
                    <input type="hidden" name="action" value="denglu">
                    </tr><tr> <th colspan=2><input type="submit" value="登陆"/></th></tr>
                </table>
                </form>
        </div>


        <div id="text">Copyright @ 2015-6-7 AllRight Reserved&nbsp&nbsp软件一班***小组版权所有
        </div><!--页面底部-->
</div>
</body>
</html>
	 