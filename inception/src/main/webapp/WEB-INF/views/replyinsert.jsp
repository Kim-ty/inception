<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<title>Login</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-sm">
				<div class="login-box well">

					<form role="form" method="post" action="/board/replyInsert">
						<legend align="left">댓글달기</legend>
						<div class="form-group">
							<input name="targetreply" id="targetreply" type="text" class="form-control" value="${value.ridx}"/>
						</div>
						<div class="form-group">
							<input name="bidx" id="bidx" type="text" class="form-control" value="${vo.bidx}"/>
						</div>
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
				</div>
			</div>
		</div>
	</div>
</body>

</html>
