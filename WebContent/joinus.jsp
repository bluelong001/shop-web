<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<meta charset="utf-8"> 
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					 <small>The online store</small>
				</h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-2 column">
			<ul class="nav nav-tabs nav-stacked">
				<li class="active">
					 <a href="index.jsp">Welcome you</a>
				</li>
				<li>
					 <a href="login.jsp">Home</a>
				</li>
				<li >
					 <a href="aboutus.html">About us</a>
				</li>
	             <li>
					 <a href="joinus.jsp">Join us</a>
				</li>
			
					<li >
					<a href="admin/adminlogin.jsp">Administor</a>
				</li>
			</ul>
		</div>
	<div class="section">
	<form action="joinus.jsp?insert=1" method="post">
<h4>name:<input type="text" name="name"></h4>
<h4>job:<input type="text" name="job"></h4>
<h4>wage:<input type="text" name="wage"></h4>
<h4>university:<input type="text" name="university"></h4>
<h4>age:<input type="text" name="age">
	<button a class="btn btn-primary btn-large" href="#">Join!</button></h4>
	</form>
	<%
	if("1".equals(request.getParameter("insert"))){%>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/onlinesay" user="root" password="admin" />

<sql:update dataSource="${snapshot}" var="count">
   INSERT INTO say(name,job,wage,age) VALUES (<%=request.getParameter("name")%>,<%=request.getParameter("job")%>,<%=request.getParameter("wage")%>,<%=request.getParameter("age")%>)
</sql:update>
	</div>
	<%} %>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron well">
				<h1>
					
				</h1>
				<p>
					Welcome to shopping!
				</p>
				<p>
					 <a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
		</div>
	</div>
</div>
</body>

</html>