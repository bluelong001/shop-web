<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script>

	$(document).ready(function() {
		$("#b-address").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('admin/addressmanager.jsp');

		})
		$("#b-kind").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('kind/list_Kind');
		})
		$("#b-bill").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('bill/list_Bill');
		})
		$("#b-buyer").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('buyer/list_Buyer');
		})
		$("#b-say").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('admin/say.jsp');
		})
		$("#b-commodity").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('commodity/list_Commodity');
		})
		$("#b-reply").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('reply/list_Reply');
		})
		$("#b-seller").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$('#myDiv').load('seller/list_Seller');
		})
		$("#b-exit").click(function() {
			$.ajaxSetup({
				cache : false
			});
			$(location).attr('href', '/online');
		})
	})
</script>
<style>
body {
	background: url('image/7.jpg') top left;
	background-size: 100% 100%;
	overflow: hidden;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/admin-css.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<title>Insert title here</title>
</head>
<div class="row clearfix">
		<div class="col-md-12 column">
		<center>
		  <h2><font size="10" color="black"><dfn>The online store</dfn></font></h2>
		</center>
		</div>
	</div>
<body style="width:100%; height:100%;">
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<div class="row clearfix">
		<div class="col-md-2 column">
			<ul style="width:100%">
				<!--  <li class="admin-li"><button class="button button-raised button-primary button-pill"  id="b-address">Address Manager</button></li>-->
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-kind" style="width: 138px; height: 34px; ">Kind
						Manager</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-bill" style="width: 138px; height: 34px; ">Bill
						Table</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-buyer" style="width: 139px; height: 33px; ">Buyer
						Table</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-commodity" style="width: 139px; height: 37px; ">Commodity
						Table</button></li>
				<br>
				<!--<li class="admin-li"><button class="button button-raised button-primary button-pill" id="b-evaluate">Evaluate
					Table</button></li>-->
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-reply" style="width: 139px; height: 37px; ">Reply
						Table Table</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-say" style="width: 137px; height: 35px; ">Customer
						Table</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-seller" style="width: 137px; height: 32px; ">Seller
						Table</button></li>
				<br>
				<li class="admin-li"><button class="btn btn-primary btn-large"
						href="#" id="b-exit" style="width: 138px; height: 29px; ">Exit</button></li>
			</ul>
		</div>
		<div id="myDiv" class="col-md-8 column">Welcome</div><div class="col-md-2 column"></div>
	</div>
</body>
</html>