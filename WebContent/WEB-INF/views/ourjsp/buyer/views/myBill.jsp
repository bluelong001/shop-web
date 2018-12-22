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

	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%;font-family:'HoangYen11fc2f790e41bb6f';">
				<thead style="width: 100px; ">
					<tr>
	        <th style="width:15%"><h1>Bill</h1></th>
	        <th style="width:15%"><h1>time</h1></th>
	        <th style="width:15%"><h1>flag</h1></th>
	        <th style="width:15%"><h1>num</h1></th>
	        <th style="width:15%"><h1>money</h1></th>
	    </tr>	</thead><tbody>
	    <c:forEach items="${myBill}" var="c" varStatus="st">
	        <tr>
	            <td><h2>${c.bill_id}</h2></td>
				<td id="bill_time"><h2>${c.bill_time}</h2></td>
				<td id="td_bill_flag"><h2>${c.bill_flag}</h2></td>
				<td id="td_bill_num"><h2>${c.bill_num}</h2></td>
				<td id="td_bill_money"><h2>${c.bill_money}</h2></td>
	        </tr>
	        </tr>
	    </c:forEach>
	    		</tbody>
			</table>
		</div>
	</div>