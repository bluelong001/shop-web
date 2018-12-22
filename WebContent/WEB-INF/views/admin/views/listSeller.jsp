<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="js/jquery.js"></script>

<base href="<%=basePath%>">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%">
				<thead style="width: 100px; ">
					<tr>
			<th style="width:12%">id</th>
			<th style="width:12%">name</th>
			<th style="width:12%">password</th>
			<th style="width:12%">age</th>
			<th style="width:12%">sex</th>
			<th style="width:12%">qq</th>
			<th style="width:12%">wechat</th>
			<th style="width:12%">address</th>
		</tr></thead><tbody>
		<c:forEach items="${listseller}" var="c" varStatus="st">
			<tr>
				<td>${c.seller_id}</td>
				<td id="td_seller_name">${c.seller_name}</td>
				<td id="td_seller_password">${c.seller_password}</td>
				<td id="td_seller_age">${c.seller_age}</td>
				<td id="td_seller_sex">${c.seller_sex}</td>
				<td id="td_seller_qq">${c.seller_qq}</td>
				<td id="td_seller_wechat">${c.seller_wechat}</td>
				<td id="td_seller_address">${c.seller_address}</td>
				
			</tr>
		</c:forEach></tbody>
			</table>
		</div>
	</div>
