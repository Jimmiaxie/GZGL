<%@page contentType="text/html;charset=gbk"%>
<%@page language="java" import="java.sql.*"%>
<html>
<head><title></title></head>
<body>
<%
   //获取基本工资管理页面传递过来的修改数据，得到每个工种最新基本工资
   int scgw=Integer.valueOf(request.getParameter("scgw"));
   int xszy=Integer.valueOf(request.getParameter("xszy"));
   int sqgw=Integer.valueOf(request.getParameter("sqgw"));
   int ssgw=Integer.valueOf(request.getParameter("ssgw"));
   int xzzy=Integer.valueOf(request.getParameter("xzzy"));
   int jgs=Integer.valueOf(request.getParameter("jgs"));
   int kfy=Integer.valueOf(request.getParameter("kfy"));
   int sczy=Integer.valueOf(request.getParameter("sczy"));
   int cwzy=Integer.valueOf(request.getParameter("cwzy"));
   int zxgw=Integer.valueOf(request.getParameter("zxgw"));
   //连接数据库
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
   Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=GZGL","sa","20134675");
   //创建preparedstatement对象，用来批量执行多个修改语句
   PreparedStatement pstmt=con.prepareStatement("UPDATE GONGZHONG SET SALARY=? WHERE PNAME=?");
   //逐个设置每个工种的名称以及传入数据
   pstmt.setInt(1,scgw);
   pstmt.setString(2,"市场顾问");
   pstmt.executeUpdate();
   pstmt.setInt(1,xszy);
   pstmt.setString(2,"销售专员");
   pstmt.executeUpdate();
   pstmt.setInt(1,sqgw);
   pstmt.setString(2,"售前顾问");
   pstmt.executeUpdate();
   pstmt.setInt(1,ssgw);
   pstmt.setString(2,"实施顾问");
   pstmt.executeUpdate();
   pstmt.setInt(1,xzzy);
   pstmt.setString(2,"行政专员");
   pstmt.executeUpdate();
   pstmt.setInt(1,jgs);
   pstmt.setString(2,"架构师");
   pstmt.executeUpdate();
   pstmt.setInt(1,kfy);
   pstmt.setString(2,"开发员");
   pstmt.executeUpdate();
   pstmt.setInt(1,sczy);
   pstmt.setString(2,"市场专员");
   pstmt.executeUpdate();
   pstmt.setInt(1,cwzy);
   pstmt.setString(2,"财务专员");
   pstmt.executeUpdate();
    pstmt.setInt(1,zxgw);
   pstmt.setString(2,"咨询顾问");
   pstmt.executeUpdate();
   //断开连接
   pstmt.close();
   con.close();
%> 
   <%/*跳转回基本工资管理页面，此时已修改数据库数据，由基本工资
       管理页面再请求数据表中数据进行更新显示。
      */%>
     <jsp:forward page="chaxun2.jsp"/>
	 <%/*注：此页面仅为处理基本工资修改页面，无显示作用*/%>
</body>
</html>