<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/35481/5a65d551f629d90b84eaaedb.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/iframe-css.css">
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<style>

ul
{
list-style-type:none;
margin:0;
padding:0;
}
</style>
<script>
	function request_json() {
		$("#myul").empty();
		$.ajax({
			type : "GET",
			url : 'kind/get_JSKind',
			contentType : "application/json",
			dataType : "json",
			success : function(data) {
				$.each(data.list, function(n, value) {
					var iframe = "iframeRight";
					var link = "commodity/show_Commodity?kid=" + value.kind_id;
					$("#myul").append("<li><a class=\"appen\" href=" + link + " target=" + iframe + ">" + value.kind_name + "</a></li>");

				});

			}
		});
	}
</script>
</head>
<body style="background-image:url(<%=basePath%>/image/7.jpg);background-position:center;">

<div class="row clearfix">
		<div class="col-md-12 column">
		<center>
		  <h2><font size="10" color="black" style="font-family:'Impactfc2f28f171bb6f';"><dfn>The online store</dfn></font></h2>
		</center>
		</div>
	</div>
<div class="row clearfix">
<div class="col-md-2 column" style="font-family:'Impactfc2f28f171bb6f';">
</div>
		<div class="col-md-2 column" style="font-family:'Impactfc2f28f171bb6f';">
			<ul id="nav">
				<li>
				  <h3><a onClick="request_json()"
					href="commodity/show_AllCommodity" target="iframeRight">look
				    all commodity</a>
			      </h3>
				</li>
			  <li>
				  <ul id="myul">
				    <c:forEach items="${listKind}" var="c">
				      <li>
				        <h3><a href="commodity/show_Commodity?kid=${c.kind_id }"
								target="iframeRight">${c.kind_name}</a></h3>
				      </li>
				      </c:forEach>
				    </ul>
			  </li>
				<li>
				  <h3><a href="commodity/show_Session" target="iframeRight">look
				    my car</a></h3>
				</li>
				<li>
				  <h3><a href="buyer/my_Buyer" target="iframeRight">look my
				    home</a></h3>
				</li>
				<li>
				  <h3><a href="bill/my_Bill" target="iframeRight">look my
				    bill</a></h3>
				</li>		
			  <li><iframe id="iframeTop" name="iframeTop" frameborder="0"
			src="iframe/tittle.jsp"></iframe></li>
		  </ul>
		</div>
		<div class="col-md-8 column" style="height:800px;width:1200px; background-color:#000000;
  background-color:rgba(0,0,0,0.2);">
			<iframe id="iframeRight" name="iframeRight" frameborder="0"
				src="iframe/welecome.jsp" style="width:100%;"height="100%"></iframe>
		</div>
	</div>
<div class="col-md-12 column">
	<iframe id="iframeBottom" name="iframeBottom" frameborder="0"
		src="iframe/bottom.jsp" style="width:100%"></iframe>

</div>

</body>
</html>