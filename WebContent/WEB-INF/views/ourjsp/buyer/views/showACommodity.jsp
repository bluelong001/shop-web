<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,com.blue.pojo.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/45410/5a65d699f629d90b84eaaedd.css' rel='stylesheet' type='text/css' />
<div style="width: 500px; margin: 0px auto; text-align: center;font-family:'HoangYen11fc2f790e41bb6f';">
	<h2>id:${showacommodity.commodity_id}<br>  name:${showacommodity.commodity_name}<br> price:${showacommodity.commodity_price}<br> inprice:${showacommodity.commodity_inprice}<br> num:${showacommodity.commodity_num}<br>
	</h2>
	 <a
		 href="commodity/add_Session?cid=${showacommodity.commodity_id}">
		<h4>Add Car</h4></a>
	<form action="bill/buy_Bill" method="post">
	<input type="hidden" name="price" value="${showacommodity.commodity_price}">
	<input type="hidden" name="kid" value="${showacommodity.kind_id}">
		<input type="hidden" name="cid" value="${showacommodity.commodity_id}">
		<input type="text" name="${showacommodity.commodity_id}" value="1">
		<button >buy</button>
		
	</form>
	<a href="commodity/show_AllCommodity">Back</a>
<hr>
<h2>Evaluate:</h2>
<hr>
		<c:forEach items="${showacommodity.reply}" var="c" varStatus="st">
		<div>	
		  <h3><img height="80px" width="80px" src="headimage/buyer+${c.buyer_id}.jpg"/>A buyer say:${c.reply_text} </h3>
		</div>
		</c:forEach>
		<form action="reply/add_Reply" method="post">
		<input type="hidden" name="buyer_id" value="<%=(int)session.getAttribute("id") %>">
		<input type="hidden" name="commodity_id" value="${showacommodity.commodity_id}">
		<input type="text" name="reply_text"><input type="submit" value="say"></form>



</div>
