<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

</head>
<body>

	<div>
		<h2>tags</h2>
		<hr>
		<c:forEach var="tagList" items="${tagList}">
			<p>
				<a href="/board/boardList/tag${tagList.tag}">${tagList.tag}</a>
			</p>
		</c:forEach>
	</div>

</body>
</html>






