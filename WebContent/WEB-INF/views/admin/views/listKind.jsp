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

<div style="width: 500px; margin: 0px auto; text-align:left">
<div>
		<c:forEach items="${listKind}" var="c" varStatus="st">
			<form action="kind/update_Kind" method="post">
			<input type="hidden" name="kind_id"
					value="${c.kind_id}">
				${c.kind_id} <input type="text" name="kind_name"
					value="${c.kind_name}">
				<button a class="btn btn-primary btn-large" href="#">update</button>
			</form><a href="kind/delete_Kind?kind_id=${c.kind_id}">Delete</a>
			<br>
		</c:forEach>
					<form action="kind/add_Kind" method="post">
				add.<input type="text" name="kind_name"
					value="">
				<button a class="btn btn-primary btn-large" href="#">add</button>
			</form>
</div>
</div>
