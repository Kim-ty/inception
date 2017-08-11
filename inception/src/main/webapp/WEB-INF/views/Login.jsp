<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<!-- 부트스트랩 -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<title>Login</title>
</head>

<body>

	<c:choose>
		<c:when test="${not  empty loginFail}">
		로그인 실패<br>
		다시 입력혀~
		</c:when>
	</c:choose>

	<form role="form" method="post" action="/user/loginchk">

		<div class="form-group">
			<label for="userid">ID or Email</label> <input name="userid"
				id="userid" placeholder="E-mail or Username" type="text"
				class="form-control" />
		</div>

		<div class="form-group">
			<label for="password">Password</label> <input name="userpw"
				id="password" placeholder="Password" type="password"
				class="form-control" />
		</div>

		<div class="form-group">
			<button type="submit">Sign in</button>
		</div>

	</form>
	<form role="form" action="/user/join" method="post">
		<div class="form-group">
			<input type="submit" value="sign up" />
		</div>
	</form>


	<script type="text/javascript">
		$(document).ready(function() {
			var loginCheck = document.getElementById()
		}

		)
	</script>

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
