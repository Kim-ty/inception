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

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<table>
		<c:forEach var="vo" items="${replyList}">
			<tr>
				<td>${board.board_num}</td>
				<td align="left"><c:if test="${vo.level > 1}">
						<c:forEach begin="1" end="${vo.level}">
							&nbsp;&nbsp; <!-- 답변글일경우 글 제목 앞에 공백을 준다. -->
						</c:forEach>
					</c:if>
					└${vo.contents }
					</td>
				<td>${vo.userid}</td>
				<td>${vo.writedate}</td>
				<td ><a href="#">답글달기</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>