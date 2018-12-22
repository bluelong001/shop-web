<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/45410/5a65d699f629d90b84eaaedd.css' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
var state="<%=request.getParameter("state")%>";
	if (state == "correct")
		alert('Correct!');
	else if (state == "error")
		alert('Errot!');
</script>
<base href="<%=basePath%>">
<div style="width: 500px; margin: 0px auto; text-align: center;font-family:'HoangYen11fc2f790e41bb6f';">

	
		<form action="seller/update_Seller">
		  <h1>
		    <input type="hidden" name="seller_id"
				value="${mySeller.seller_id}">
			Your id:${mySeller.seller_id}<br>
			Your name:<input type="text" name="seller_name" value="${mySeller.seller_name}"><br>
				Your password:<input type="text" name="seller_password"
		      value="${mySeller.seller_password}"><br>
				Your age:<input type="text" name="seller_age"
				value="${mySeller.seller_age}"><br>
				Your sex:<input type="text" name="seller_sex"
				value="${mySeller.seller_sex}"><br>
				Your qq:<input type="text" name="seller_qq"
				value="${mySeller.seller_qq}"><br>
					Your wechat:<input type="text" name="seller_wechat"
				value="${mySeller.seller_wechat}"><br>
					Your address:<input type="text" name="seller_address"
				value="${mySeller.seller_address}"><br>

				 <input type="submit" value="Update">
		  </h1>
		</form>

</div>
