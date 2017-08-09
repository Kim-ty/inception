<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 부트스트랩 -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">


</head>

<body>
	<div class="container">
		<div class="row">
<<<<<<< HEAD
			<form role="form" method="post" action="">
				<div class="form-group">
					<input name="reply" id="reply" type="text" class="form-control" />
				</div>
				<div class="form-group">
					<input type="submit" value="submit" />
=======
			<div class="col-sm">
				<div class="login-box well">

					<form role="form" method="post" action="/board/replyInsert">
						<legend align="left">댓글달기</legend>
						<div class="form-group">
								<input name="reply"
								id="reply" type="text"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="post" />
						</div>
					</form>
>>>>>>> 524a1f4f10b1edee45a1897ddb37527db90f02fb
				</div>
				<div class="form-group">
					<input type="Button" value="Cancel" />
				</div>
			</form>
		</div>
	</div>




</body>
</html>