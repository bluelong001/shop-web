<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
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
	<%
		if (session.getAttribute("id") == null ) {
	%>
	<div class="section" align="center">
		<div class="login-b" align="center">
			<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myLogin">
	Login
</button>
<div class="modal fade" id="myLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
					<div id="myLogin">
			<form action="buyer/login" action="get">
				<input type="text" name="buyer_name" /> <input type="password"
					name="buyer_password" />
				<button class="btn btn-primary btn-large" href="#">Login in by buyer</button>
			</form>
			<form action="seller/login" action="get">
				<input type="text" name="seller_name" /> <input type="password"
					name="seller_password" />
				<button class="btn btn-primary btn-large" href="#">Login in by seller</button>
			</form>
		</div>
			</div>
			</div>
		</div>
	</div>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myRegister">
	Register
</button>
 <div class="modal fade" id="myRegister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog">
		<div class="modal-content">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
<div id="myRegister">
			<form action="buyer/register" action="post">
				<input type="text" name="buyer_name" /> <input type="password"
					name="buyer_password" /> 
				<button class="btn btn-primary btn-large" href="#">Sign up by buyer</button>
			</form>
			<form action="seller/register" action="post">
				<input type="text" name="seller_name" /> <input type="password"
					name="seller_password" /> 
				<button class="btn btn-primary btn-large" href="#">Sign up by seller</button>
			</form>
		</div>
			</div>
			</div>
		</div>
		</div>
		

	</div>
	<%
		} else {
	%><div class="section" align="center">
		<div class="login-b" align="center">
			<form action="clear" method="post">
				<button  class="btn btn-primary btn-large" href="#" id="exit" class="button button-3d button-action button-pill">Exit</button>
			</form>
			<%
			if(((String)session.getAttribute("kind")).equals("buyer")){
			 %>
<button  class="btn btn-primary btn-large" href="#" onclick="window.location='buyer/login'">My System</button>
<%
}
else if((((String)session.getAttribute("kind")).equals("seller"))){ %>
<button  class="btn btn-primary btn-large" href="#" onclick="window.location='seller/login'">My System</button>
		</div>
	</div>
	<%
		}}
	%>
	<div></div>
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