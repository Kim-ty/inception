<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<title>Login</title>


</head>

<body>



	<div class="container">
		<div class="row">
			<div class="col-sm">
				<div class="login-box well">

					<form role="form" method="post" action="/user/loginchk">
						<legend align="left">Login</legend>

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



	<script type="text/javascript">
		$(document).ready(function() {
			var loginCheck = document.getElementById()
		}

		)
	</script>



</body>

</html>
