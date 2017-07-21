<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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


<script type="text/javascript">
	$(document).ready(
			function() {

				var joinCheck = document.getElementById('join');
				joinCheck.disabled = true;
				var idFlag = false;
				var pwFlag = false;
				var emailFlag = false;
				var emailFlag2 = false;
				var sexFlag = false;

				$("#sex").click(function() {
					sexFlag = true;
					joinChecker();
				})

				$("#userpw2").blur(
						function() {
							var pw1 = $("#userpw").val();
							var pw2 = $("#userpw2").val();
							if (pw1.length > 0 && pw2.length > 0) {
								if (pw1 != pw2) {
									$("#content2").text("암호가 일치하지 않습니다").css(
											"color", "red");
									pwFlag = false;
									joinChecker();
								} else {
									$("#content2").text("암호가 일치합니다").css(
											"color", "blue");
									pwFlag = true;
									joinChecker();
								}
							}

						});
				$("#useremail2").blur(
						function() {
							var email1 = $("#useremail").val();
							var email2 = $("#useremail2").val();
							if (email1.length > 5 && email2.length > 5) {
								if (email1 != email2) {
									$("#content3").text("이메일이 일치하지 않습니다").css(
											"color", "red");
									emailFlag = false;
									joinChecker();
								} else {
									$("#content3").text("이메일이 일치합니다").css(
											"color", "blue");
									emailFlag = true;
									joinChecker();
								}
							}

						});

				$("#useremail").blur(
						function() {
							var userinfo = $("#insert_form").serialize();
							$.ajax({
								type : "GET",
								url : "/user/emailchk",
								data : userinfo,
								success : function(emailchk) {
									if (1 == emailchk) {
										$("#content4").text("중복된 이메일입니다").css(
												"color", "red");
										emailFlag2 = false;
										joinChecker();
									} else if (-1 == emailchk) {
										$("#content4").text("이메일이 너무짧습니다").css(
												"color", "black");
										emailFlag2 = false;
										joinChecker();
									} else {
										$("#content4").text("사용가능한 이메일 입니다")
												.css("color", "blue");
										emailFlag2 = true;
										joinChecker();
									}

								}
							});
						});

				$("#userid").blur(
						function() {
							var userinfo = $("#insert_form").serialize();
							$.ajax({
								type : "GET",
								url : "/user/idchk",
								data : userinfo,
								success : function(idchk) {
									if (1 == idchk) {
										$("#content").text("중복된 아이디입니다").css(
												"color", "red");
										idFlag = false;
										joinChecker();
									} else if (-1 == idchk) {
										$("#content").text("아이디가 너무 짧습니다").css(
												"color", "black");
										idFlag = false;
										joinChecker();
									} else {
										$("#content").text("사용가능한 아이디 입니다")
												.css("color", "blue");
										idFlag = true;
										joinChecker();
									}

								}
							});
						});
				function joinChecker() {
					var joinCheck = document.getElementById('join');
					if (idFlag == true && pwFlag == true && emailFlag == true
							&& emailFlag2 == true && sexFlag == true) {
						joinCheck.disabled = false;
					} else {
						joinCheck.disabled = true;
					}
				}

			});
</script>

<title>Join</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="login-box well">

					<form id="insert_form" role="form" method="post"
						action="/user/joinchk">
						<legend>Join</legend>

						<div class="form-group">
							<label for="userid">ID</label> <input id="userid" type="text"
								name="userid" class="form-control" placeholder="Enter Your ID" />
							<span id="content"> </span>
						</div>

						<div class="form-group">
							<label for="password">password</label> <input id="userpw"
								type="password" name="userpw" class="form-control"
								placeholder="Enter Your password" />
						</div>

						<div class="form-group">
							<label for="re-password">re-password</label> <input id="userpw2"
								type="password" name="userpw2" class="form-control"
								placeholder="Enter Your password" /> <span id="content2">
							</span>
						</div>

						<div class="form-group">
							<label for="useremail">Email</label> <input id="useremail"
								type="text" name="useremail" class="form-control"
								placeholder="Enter Your Email" /> <span id="content4"> </span>
						</div>

						<div class="form-group">
							<label for="useremail2">re - Email</label> <input id="useremail2"
								type="text" name="useremail2" class="form-control"
								placeholder="Enter Your Email" /> <span id="content3"> </span>
						</div>

						<div class="form-group">
							<input id="sex" type="radio" name="sex" value="남자"> 남자<br />
							<input id="sex" type="radio" name="sex" value="여자"> 여자<br />
							<!--  <label for="sex">SEX</label>
              <input id="sex" type="text" name="sex" class="form-control" placeholder="Enter Your sex" /> -->
						</div>



						<div class="form-group">
							<input type="submit" id="join"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="sign up" />
						</div>

						<div class="form-group">
							<input type="reset"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="reset" />
						</div>


					</form>

				</div>
			</div>
		</div>
	</div>
</body>

</html>
