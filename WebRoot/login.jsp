<%@page contentType="text/html;charset=gb2312"%>
<html>
  <head>
    <title>���ʹ���ϵͳ</title>
    <link rel="stylesheet" href="login.css" type="text/css">
  </head>
<body>
<div id="container"><!--ҳ�������-->

    <div id="header"><!--ҳ��ͷ��-->
        <div id="title">
            ���ʹ���ϵͳ
        </div>
    </div>

        <div id="mainbody"><!--��������-->

            <form action="logintreat.jsp" method="post" >
                <table>
                    <tr><th>����:</th><td><input type="text" name="name" /></td></tr>
                    <tr><th>����:</th><td><input type="password" name="password"/></td></tr>
                    <tr><th>Ȩ��:</th><td><input type="radio" name="role" value=1 checked/>�û�
                        <input type="radio" name="role"   value=0  />����Ա</td></tr>
                    <input type="hidden" name="action" value="denglu">
                    </tr><tr> <th colspan=2><input type="submit" value="��½"/></th></tr>
                </table>
                </form>
        </div>


        <div id="text">Copyright @ 2015-6-7 AllRight Reserved&nbsp&nbsp���һ��***С���Ȩ����
        </div><!--ҳ��ײ�-->
</div>
</body>
</html>
	 