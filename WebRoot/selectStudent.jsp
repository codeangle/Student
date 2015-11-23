<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>selectStudent</title>
</head>
<body>
	<p align='center'>想要找学生吗？来这里吧!</p>
	<p align='center'>查询方式：</p>
	
		<form action='byNumber.jsp' method='post'>
			<p align='center'>根据学号查询：
			<input type='text' name='number'/>
			<input type='submit' value='submit'/>
		</form>
		
		<form action='byName.jsp' method='post'>
			<p align='center'>根据姓名模糊查询：
			<input type='text' name='name'/>
			<input type='submit' value='submit'/>
		</form>
</body>
</html>