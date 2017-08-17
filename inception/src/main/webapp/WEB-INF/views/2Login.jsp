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

<title>inception_Login</title>

<style>
body {
	background-color: #1b1b1b;
	padding-top: 40px;
}

.form-signin {
	max-width: 280px;
	padding: 15px;
	margin: 100px;
	margin-top: 70px;
}

.panel-default {
	opacity: 0.7;
	/*margin-top:30px;*/
}

.input-group-addon {
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
	color: rgb(255, 255, 255);
}

.form-signup input[type="text"], .form-signup input[type="password"] {
	border: 1px solid rgb(50, 118, 177);
}

.fullscreen_bg {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background-size: cover;
	background-position: 50% 50%;
	background-image:
		url('http://blog.transfer-iphone-recovery.com/images/photo-with-blur-background.jpg');
	background-repeat: repeat;
}
</style>

</head>

<body>

	<!-- CDNlib -->
	<jsp:include page="CDNLIB.jsp" flush="false" />

	<div id="fullscreen_bg" class="fullscreen_bg" />
	<form class="form-signin">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-body">
							<form class="form-signin">
								<h3 class="text-center">SIGN IN</h3>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="text" class="form-control" placeholder="Email Address" />
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span></span> <input
											type="password" class="form-control" placeholder="Password" />
									</div>
								</div>

								<button class="btn btn-lg btn-primary btn-block" type="submit">
									Sign In</button>
								<button id="login_register_btn" type="button"
									class="btn btn-link">Register</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
</body>
</html>