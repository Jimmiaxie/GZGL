<%@page contentType="text/html;charset=gbk"%>
<%@page language="java" import="java.sql.*"%>
<html>
<head><title></title></head>
<body>
<%
   //��ȡ�������ʹ���ҳ�洫�ݹ������޸����ݣ��õ�ÿ���������»�������
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
   //�������ݿ�
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
   Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433; DatabaseName=GZGL","sa","20134675");
   //����preparedstatement������������ִ�ж���޸����
   PreparedStatement pstmt=con.prepareStatement("UPDATE GONGZHONG SET SALARY=? WHERE PNAME=?");
   //�������ÿ�����ֵ������Լ���������
   pstmt.setInt(1,scgw);
   pstmt.setString(2,"�г�����");
   pstmt.executeUpdate();
   pstmt.setInt(1,xszy);
   pstmt.setString(2,"����רԱ");
   pstmt.executeUpdate();
   pstmt.setInt(1,sqgw);
   pstmt.setString(2,"��ǰ����");
   pstmt.executeUpdate();
   pstmt.setInt(1,ssgw);
   pstmt.setString(2,"ʵʩ����");
   pstmt.executeUpdate();
   pstmt.setInt(1,xzzy);
   pstmt.setString(2,"����רԱ");
   pstmt.executeUpdate();
   pstmt.setInt(1,jgs);
   pstmt.setString(2,"�ܹ�ʦ");
   pstmt.executeUpdate();
   pstmt.setInt(1,kfy);
   pstmt.setString(2,"����Ա");
   pstmt.executeUpdate();
   pstmt.setInt(1,sczy);
   pstmt.setString(2,"�г�רԱ");
   pstmt.executeUpdate();
   pstmt.setInt(1,cwzy);
   pstmt.setString(2,"����רԱ");
   pstmt.executeUpdate();
    pstmt.setInt(1,zxgw);
   pstmt.setString(2,"��ѯ����");
   pstmt.executeUpdate();
   //�Ͽ�����
   pstmt.close();
   con.close();
%> 
   <%/*��ת�ػ������ʹ���ҳ�棬��ʱ���޸����ݿ����ݣ��ɻ�������
       ����ҳ�����������ݱ������ݽ��и�����ʾ��
      */%>
     <jsp:forward page="chaxun2.jsp"/>
	 <%/*ע����ҳ���Ϊ������������޸�ҳ�棬����ʾ����*/%>
</body>
</html>