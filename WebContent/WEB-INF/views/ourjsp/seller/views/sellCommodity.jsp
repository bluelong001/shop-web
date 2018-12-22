<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery.js"></script>
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/45410/5a65d699f629d90b84eaaedd.css' rel='stylesheet' type='text/css' />
<script>
	$.ajax({
		type : "GET",
		url : 'kind/get_JSKind',
		contentType : "application/json",
		dataType : "json",
		success : function(data) {
			$.each(data.list, function(n, value) {
				var link = value.kind_id;
				$(".myaddselect").append(
						"<option value="+link+">" + value.kind_name
								+ "</option>");
				$(".myupdateselect").append(
						"<option value="+link+">" + value.kind_id +":"+value.kind_name
								+ "</option>");

			});

		}
	});
	
</script>
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
			 <th style="width:15%"><h1>kind</h1></th>
		</tr> </thead><tbody>
		<c:forEach items="${sellcommodity}" var="c" begin="0">
			<tr>
				<form action="commodity/update_Commodity" method="post">
					<input type="hidden" name="seller_id"
						value="<%=session.getAttribute("id")%>" /> <input type="hidden"
						name="commodity_id" value="${c.commodity_id}" />
						<td><h2>${c.commodity_id}</h2></td>
					<td><h2>
					  <input type="text" name="commodity_name"
						value="${c.commodity_name}" />
				    </h2></td>
					<td><h2>
					  <input type="text" name="commodity_price"
						value="${c.commodity_price}" />
				    </h2></td>
					<td><h2>
					  <input type="text" name="commodity_inprice"
						value="${c.commodity_inprice}" />
				    </h2></td>
					<td><h2>
					  <input type="text" name="commodity_num"
						value="${c.commodity_num}" />
				    </h2></td>
					<td><h2>Old_Kind:${c.kind_id} <br>New_Kind:
					    <select class="myupdateselect"
						name="kind_id">
				      </select>
					</h2></td>
					<td><h2>
					  <input type="submit" value="update"> 
				    <a
						href="commodity/delete_Commodity?cid=${c.commodity_id}">delete</a></h2></td>
				</form>
			</tr></tbody>
		</c:forEach>
	</table>
</div>
	<form action="commodity/add_Commodity" method="post" style="font-family:'HoangYen11fc2f790e41bb6f';" >
		<h3>
		  <input type="hidden" name="seller_id"
			value="<%=session.getAttribute("id")%>" /> 
		  name<input type="text"
			name="commodity_name" /> price<input type="text" name="commodity_price" />
	inprice<input type="text" name="commodity_inprice" /> num<input type="text"
			name="commodity_num" /> 
	<select class="myaddselect" name="kind_id">
	  </select> 
	<input type="submit" value="Add" />
	    </h3>
	</form>
</div>

