<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/iframe-css.css">
<link href='http://cdn.webfont.youziku.com/webfonts/nomal/113519/35481/5a65d551f629d90b84eaaedb.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
</script>
<style type="text/css">
<!--
body, td, th {
	color: #F00;
}
-->

</style>
<body style="background-image:url(<%=basePath%>/image/7.jpg);background-position:center;">
	
</head>

	<div class="row clearfix">
		<div class="col-md-12 column">
      
            <center>
              <h1>
				<font color="black" size="10" class="btn-group-justified"style="font-family:'Impactfc2f28f171bb6f';"><i>The online store</i></font>
			</h1>
            </center>
         
        </div>
	</div>

<div class="row clearfix">
	<div class="col-md-2 column"></div>
		<div class="col-md-2 column"style="font-family:'Impactfc2f28f171bb6f';">
		<ul id="nav">
			<li>
			  <h3>
					<a href="commodity/sell_Commodity" target="iframeRight"
						class="btn-link">look
			    my commodity</a>
				</h3>
			</li>


	
			<li>
			  <h3>
					<a href="seller/my_Seller" target="iframeRight">my home </a>
				</h3>
		  </li>	
	    <li><iframe id="iframeTop" name="iframeTop" frameborder="0"
					src="iframe/tittle.jsp"></iframe></li>
			</ul>
		</div>
		<div class="col-md-8 column" style="height:800px; width:1200px;background-color:#000000;
  background-color:rgba(0,0,0,0.2);" >
        <iframe id="iframeRight" name="iframeRight" frameborder="0"
			src="iframe/welecome.jsp" style="width:100%;height:100%;"></iframe>
		</div>
	</div>
<div class="col-md-12 column">
		<iframe id="iframeBottom" name="iframeBottom" frameborder="0"
		src="iframe/bottom.jsp" style="width:100%;"></iframe>

</div>

</body>
</html>