<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<body>
	<table border="1">
		<tr>
			<td><a href="/profile/${profile.userid}">${profile.userid}</a></td>
			<td><a href ="/profile/${profile.userid}/followlist">${profile.followCount}</a></td>
			<td><a href ="/profile/${profile.userid}/followerlist">${profile.followerCount}</a></td>
		</tr>
	</table>
	<table>
	<tr>
	</tr>
		<tr>
			<td><a href="/profile/${profile.userid}">board</a></td>
			<td><a href="/profile/${profile.userid}/reply">reply</a></td>
			<td><a href="/profile/${profile.userid}/scrap">scrap</a></td>
		</tr>
	</table>
	<table>
			<c:forEach var="vo" items="${profileReply}">
				<!-- <tr></tr> => row1  Table Row -->
				<tr class="active">
					<!-- <td></td> => DATA Table DATA -->
					<th>${vo.boardTitle}</th>
					<th>${ vo.contents}</th>
					<th>${ vo.writedate}</th>
				</tr>

			</c:forEach>	
	</table>
</body>
</html>