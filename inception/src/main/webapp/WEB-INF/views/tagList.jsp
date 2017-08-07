<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

	<div>
		<h2>tags</h2>
		<hr>
		<c:forEach var="tagList" items="${tagList}">
			<p align="left">
				<a href="/board/boardList/tag${tagList.tag}">${tagList.tag}</a>
			</p>
		</c:forEach>
	</div>

</body>
</html>