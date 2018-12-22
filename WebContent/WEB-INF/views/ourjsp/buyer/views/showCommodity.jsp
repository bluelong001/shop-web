<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="<%=basePath%>">
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/45410/5a65d699f629d90b84eaaedd.css' rel='stylesheet' type='text/css' />
	<div class="row clearfix">
		<div class="col-md-12 column" style="font-family:'HoangYen11fc2f790e41bb6f';">
			<table class="table table-hover table-bordered" style="width:100%">
				<thead style="width: 100px; ">
					<tr>
						<th style="width:15%"><h1>id</h1></th>
	        <th style="width:15%"><h1>name</h1></th>
	        <th style="width:15%"><h1>price</h1></th>
	       <th style="width:15%"><h1>inprice</h1></th>
	        <th style="width:15%"><h1>num</h1></th>
	    </tr>  	</thead><tbody>
		<c:forEach items="${showcommodity}" var="c" varStatus="st">
	        <tr>
	            <td><h2>${c.commodity_id}</h2></td>
	            <td id="commodity_name"><h2>${c.commodity_name}</h2></td>
				<td id="td_commodity_price"><h2>${c.commodity_price}</h2></td>
				<td id="td_commodity_inprice"><h2>${c.commodity_inprice}</h2></td>
				<td id="td_commodity_num"><h2>${c.commodity_num}</h2></td>
	     
				<td>	<h2><a href="commodity/add_Session?cid=${c.commodity_id}">Add Car</a>
				  <a href="commodity/show_ACommodity?cid=${c.commodity_id}">Look a look</a></h2>
				<td>
				</td>
			</tr>
		</c:forEach>  	</tbody>
	</table>
	<div style="text-align: center">
	  <h2><a href="commodity/show_Session">Look Car</a></h2>
    </div>
</div>
