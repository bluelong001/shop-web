<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
    
<base href="<%=basePath%>">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
var state="<%=request.getParameter("state") %>";
if(state=="correct")
	alert('Correct!');
else if(state=="error")
	alert('Correct!');
$('#getBuyer').on('click', function() {
	$("#buyer_name").val("")=$(this).parents("tr").find("#td_buyer_name").text();
});
	function addBuyer() {
		var form = document.forms[0];
		form.action = "buyer/add_Buyer";
		form.method = "post";
		form.submit();
	}
	function updateBuyer() {
		var form=document.form[0];
		form.action="buyer/update_Buyer"
	}
	
</script>
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
		</tr>
		</thead><tbody>
		<c:forEach items="${listBuyer}" var="c" varStatus="st">
			<tr>
				<td>${c.buyer_id}</td>
				<td id="td_buyer_name">${c.buyer_name}</td>
				<td id="td_buyer_password">${c.buyer_password}</td>
				<td id="td_buyer_age">${c.buyer_age}</td>
				<td id="td_buyer_sex">${c.buyer_sex}</td>
				<td id="td_buyer_qq">${c.buyer_qq}</td>
				<td id="td_buyer_wechat">${c.buyer_wechat}</td>
				<td id="td_buyer_address">${c.buyer_address}</td>
			</tr>
		</c:forEach>
		</tbody>
			</table>
		</div>
	</div>
