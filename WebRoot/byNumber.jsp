<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312" import='java.sql.*'%>
<%request.setCharacterEncoding("gb2312");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>byNumber search</title>
</head>
<body>
	<%String number=request.getParameter("number");%>
		<p align="center">根据学号<%=number%>查询到的记录:
		<table align = "center">
			<tr align = 'center'>
				<td>学号</td>
				<td>姓名</td>
				<td>班级号</td>
			</tr>
	<%
		String url = "jdbc:mysql://localhost/Student";
		String name="root";
		String password="root";
		String sql=null;
		Connection conn = null;
		Statement stmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			System.out.println("加载驱动器类出现异常");
		}
		conn=DriverManager.getConnection(url,name,password);
		stmt=conn.createStatement();
		sql="select * from t_student where stuId="+number;
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
	%>
			<tr align="center">
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
			<tr>
	<%
		}
	%>
		</table>
</body>
</html>