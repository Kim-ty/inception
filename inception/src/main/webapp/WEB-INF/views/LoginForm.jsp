<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="../../resources/login/login.css" />
<!-- <script src="/resources/login/login.js"></script> -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/jquery/jquery.js"></script>
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

<title>Login Form</title>
</head>
<body>
	<div class="container">

		<section>
		<div id="container_demo">
			<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
				id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form action="/user/loginchk" method="post">
						<h1>Log in</h1>
						<c:choose>
							<c:when test="${not  empty loginFail}">
		로그인 실패<br>
		다시 입력혀~
		</c:when>
						</c:choose>
						<p>
							<label for="username" class="uname"> Your email or
								username </label> <input id="username" name="userid" required="required"
								type="text" placeholder="E-mail or Username" />
						</p>
						<p>
							<label for="password" class="youpasswd"> Your password </label> <input
								id="password" name="userpw" required="required" type="password"
								placeholder="Password" />
						</p>
						<!-- 						<P CLASS="KEEPLOGIN"> -->
						<!-- 							<INPUT TYPE="CHECKBOX" NAME="LOGINKEEPING" ID="LOGINKEEPING" -->
						<!-- 								VALUE="LOGINKEEPING" /> <LABEL FOR="LOGINKEEPING">KEEP -->
						<!-- 								ME LOGGED IN</LABEL> -->
						<!-- 						</P> -->
						<p class="login button">
							<a href="http://cookingfoodsworld.blogspot.in/" target="_blank"></a>
						</p>
						<p class="signin button">
							<input type="submit" value="Sign up" />
						</p>
						<p class="change_link">
							Not a member yet ? <a href="#toregister" class="to_register">Join
								us</a>
						</p>
					</form>
				</div>

				<div id="register" class="animate form">
					<form id="insert_form" role="form" method="post"
						action="/user/joinchk">
						<h1>Sign up</h1>
						<div class="row">
							<div class="col-md-3">
								<div class="login-box well">

									<div class="form-group">
										<label for="userid">ID</label> <input id="userid" type="text"
											name="userid" class="form-control"
											placeholder="Enter Your ID" /> <span id="content"> </span>
									</div>
									<div class="form-group">
										<label for="password">password</label> <input id="userpw"
											type="password" name="userpw" class="form-control"
											placeholder="Enter Your password" />
									</div>
									<div class="form-group">
										<label for="re-password">re-password</label> <input
											id="userpw2" type="password" name="userpw2"
											class="form-control" placeholder="Enter Your password" /> <span
											id="content2"> </span>
									</div>
									<div class="form-group">
										<label for="useremail">Email</label> <input id="useremail"
											type="text" name="useremail" class="form-control"
											placeholder="Enter Your Email" /> <span id="content4">
										</span>
									</div>
									<div class="form-group">
										<label for="useremail2">re - Email</label> <input
											id="useremail2" type="text" name="useremail2"
											class="form-control" placeholder="Enter Your Email" /> <span
											id="content3"> </span>
									</div>
									<div class="form-group">
										<input type="radio" id="sex" name="sex" value="남자"> 남자<br />
										<input type="radio" id="sex" name="sex" value="여자"> 여자<br />
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
								</div>
							</div>
						</div>



						<p class="signin button">
							<input type="submit" value="Sign up" />
						</p>
						<p class="change_link">
							Already a member ? <a href="#tologin" class="to_register"> Go
								and log in </a>
						</p>
					</form>
				</div>

	</div>
	</div>
	</section>
	</div>
</body>

</html>
	