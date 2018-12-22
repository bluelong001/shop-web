<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
     <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%">
				<thead style="width: 100px; ">
					<tr>
						<th style="width:15%">id</th>
	        <th style="width:15%">name</th>
	        <th style="width:15%">price</th>
	       <th style="width:15%">inprice</th>
	        <th style="width:15%">num</th>
	    </tr>	</thead><tbody>
	    <c:forEach items="${listcommodity}" var="c" varStatus="st">
	        <tr>
	            <td>${c.commodity_id}</td>
	            <td id="commodity_name">${c.commodity_name}</td>
				<td id="td_commodity_price">${c.commodity_price}</td>
				<td id="td_commodity_inprice">${c.commodity_inprice}</td>
				<td id="td_commodity_num">${c.commodity_num}</td>
	        </tr>
	    </c:forEach></tbody>
			</table>
		</div>
	</div>
 <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
