<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/div.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head><br><br><br><br><br><br><br><br><br><br><br><br><br>
<body style="width:100%; height:100%;">
<style>
	body{
		background:url('image/5.jpg') top left;
		background-size:100% 100%;
		overflow:hidden;
	}
</style>
<body
	style="background-image: url(image/admin-bigback.jpg); background-position: center; text-align: center">
	<div class="admin-login" align="center">
		<h1>Administrators Login</h1>
		<form action="admin/login" method="post">
			<input type="text" name="admin_name"><br>
			<br>
			<br>
			<input type="password" name="admin_password"> <br>
			<br> <input class="btn btn-primary btn-large" href="#" type="submit" value="login">
		</form>
	</div>
</body>
</html>