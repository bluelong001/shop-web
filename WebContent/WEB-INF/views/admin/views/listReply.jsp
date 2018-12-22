<i><%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
     
     <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%">
				<thead style="width: 100px; ">
					<tr>
	        <th style="width:50%">id</th>
	        <th style="width:50%">text</th>
	    </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${listReply}" var="c" varStatus="st">
	        <tr>
	            <td>${c.reply_id}</td>
	            <td id="reply_text">${c.reply_text}</td>
	        </tr>
	    </c:forEach>
			</tbody></table>
		</div>
	</div>

</i>