<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">window.setTimeout("window.location='<%=basePath%>/index.jsp'",3000); </script>
</head>
 
<body style="background-image:url(image/7.jpg)">
<div id="Layer1" style="position:absolute; left:0px; top:0px; width:100%; height:100%">  
</div> 
<style> 
div{text-align:center} 
</style> 
<br><br><br><br><br><br><br><br><br><br><br><br>
<div>
<a href="index.jsp">Correct!!!Wait 3 minute,Or ...</a></div>

</body>
</html>