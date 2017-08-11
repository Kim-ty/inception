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

<!-- jQuery -->
<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/jquery/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Bootstrap Core CSS -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/css/grayscale.min.css"
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



</body>

</html>
