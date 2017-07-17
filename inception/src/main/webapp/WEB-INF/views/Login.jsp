<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">

<title>Login</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-sm">
				<div class="login-box well">

					<form role="form" method="post" action="/user/loginchk">
						<legend>Login</legend>

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
							<input type="submit"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="sign in" />
						</div>
					</form>
					<form role="form" action="/user/join" method="post">
						<div class="form-group">
							<input type="submit"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="sign up" />

						</div>


					</form>

				</div>
			</div>
		</div>
	</div>
</body>

</html>
