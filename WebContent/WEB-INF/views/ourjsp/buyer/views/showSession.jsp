<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/45410/5a65d699f629d90b84eaaedd.css' rel='stylesheet' type='text/css' />
	<form action="bill/buy_Session" method="post">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%;font-family:'HoangYen11fc2f790e41bb6f';">
				<thead style="width: 100px; ">
					<tr>
						<th style="width:15%"><h1>id</h1></th>
	        <th style="width:15%"><h1>name</h1></th>
	        <th style="width:15%"><h1>price</h1></th>
	       <th style="width:15%"><h1>inprice</h1></th>
	        <th style="width:15%"><h1>num</h1></th>
	    </tr>

			<c:forEach items="${carlist}" var="c" varStatus="st">
			        <tr>
	            <td><h2>${c.commodity_id}</h2></td>
	            <td id="commodity_name"><h2>${c.commodity_name}</h2></td>
				<td id="td_commodity_price"><h2>${c.commodity_price}</h2></td>
				<td id="td_commodity_inprice"><h2>${c.commodity_inprice}</h2></td>
				<td id="td_commodity_num"><h2>${c.commodity_num}</h2></td>
	    
					<td><h2>
					  <input type="text" name="${c.commodity_id}" value="1">
					  </h2></td>
					<td><h2><a href="commodity/delete_Session?cid=${c.commodity_id}">delete</a>
					  
					  </h2></td>
				</tr>
			</c:forEach>

		</table>
		<center><input type="submit" value="buy"></center>


</div>
	</form>
