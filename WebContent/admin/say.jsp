<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/admin-css.css">
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/onlinesay" user="root"
		password="admin" />

	<sql:query dataSource="${snapshot}" var="result">
SELECT * from say;
</sql:query>

	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover table-bordered" style="width:100%">
				<thead style="width: 100px; ">
					<tr>
			<th style="width:15%">Id</th>
			<th style="width:15%">Name</th>
			<th style="width:15%">Stimestamp</th>
			<th style="width:15%">Job</th>
			<th style="width:15%">Wage</th>
			<th style="width:15%">University</th>
			<th style="width:15%">Age
			</th>
		</tr></thead><tbody>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.stimestamp}" /></td>
				<td><c:out value="${row.job}" /></td>
				<td><c:out value="${row.wage}" /></td>
				<td><c:out value="${row.university}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>