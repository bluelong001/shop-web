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
<div style="width: 447px; margin: 0px auto; text-align: center; height: 509px">
	<img height="80px" width="80px" src="headimage/buyer+${myBuyer.buyer_id}.jpg"/>
		<form action="buyer/update_Buyer" style="width: 489px; height: 328px;font-family:'HoangYen11fc2f790e41bb6f'; ">
		  <h2>
		    <input type="hidden" name="buyer_id"
				value="${myBuyer.buyer_id}">
			Your id:${myBuyer.buyer_id}<br>
			Your name:<input type="text" name="buyer_name"
				value="${myBuyer.buyer_name}"><br>
		Your password:<input type="text" name="buyer_password"
		      value="${mySeller.buyer_password}"><br>
				Your age:<input type="text" name="buyer_age"
				value="${mySeller.buyer_age}"><br>
				Your sex:<input type="text" name="buyer_sex"
				value="${mySeller.buyer_sex}"><br>
				Your qq:<input type="text" name="buyer_qq"
				value="${mySeller.buyer_qq}"><br>
					Your wechat:<input type="text" name="buyer_wechat"
				value="${mySeller.buyer_wechat}"><br>
					Your address:<input type="text" name="buyer_address"
				value="${mySeller.buyer_address}"><br>
				 <input type="submit"
				value="Update">
		  </h2>
</form>
		<a href="upload.jsp?kind=buyer&id=${myBuyer.buyer_id}" target="_blank">upload</a>

</div>
