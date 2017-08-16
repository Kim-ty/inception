<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->


</head>
<body>
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div>
				<jsp:include page="2sidebar.jsp" flush="false" />
			</div>
			<div align="right">
				<div>
					<c:choose>
						<c:when test="${not empty sessionScope.loginInfo}">
							<span>welcome ${sessionScope.loginInfo.userid} !! </span>
							<a href="/profile/${sessionScope.loginInfo.userid}/">profile</a>
							<a href="/user/logout">Log out</a>
						</c:when>
						<c:otherwise>
							<a class="btn btn-default" href="user/login" role="button">login</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>

		</div>
	</nav>
</body>
</html>