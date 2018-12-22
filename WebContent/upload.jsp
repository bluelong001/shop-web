<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
  
<form action="uploadimage" method="post" enctype="multipart/form-data">

<input type="hidden" name="kind" value="<%=request.getParameter("kind") %>">
<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
  picture:<input type="file" name="image" accept="image/*" /> <br>
  <input type="submit" value="upload">
</form>