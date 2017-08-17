<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<style>
body {
	background-color: #1b1b1b;
	padding-top: 40px;
}

.form-signin {
	max-width: 280px;
	padding: 15px;
	margin: 100px;
	margin-top: 10px;
}

.input-group-addon {
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
	color: rgb(255, 255, 255);
}

.form-control:focus {
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
	color: rgb(255, 255, 255);
}

.panel-default {
	opacity: 0.8;
	/*margin-top:30px;*/
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

<title>Join</title>
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
							<h3 class="text-center">SIGN UP</h3>
							<form class="form form-signup" role="form">
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-user"></span> </span> <input type="text"
											class="form-control" placeholder="First Name" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-user"></span></span> <input type="text"
											class="form-control" placeholder="Last Name" />
									</div>
								</div>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span></span> <input
											type="text" class="form-control" placeholder="Email" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span></span> <input
											type="password" class="form-control" placeholder="Password" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-home"></span></span> <input type="text"
											class="form-control" placeholder="Address" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-calendar"></span></span> <input
											type="text" class="form-control" placeholder="Age" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-credit-card"></span></span> <input
											type="text" class="form-control" placeholder="Credit card" />
									</div>
								</div>
						</div>
						<a href="http://www.jquery2dotnet.com"
							class="btn btn-sm btn-primary btn-block" role="button">
							SUBMIT</a>
	</form>
	</div>
	</div>
	</div>
	</div>
	</form>
	</div>
</body>

</html>
