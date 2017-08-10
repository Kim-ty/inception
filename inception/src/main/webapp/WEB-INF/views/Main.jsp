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

<script type="text/javascript">
	$(function() {
		$("#imgInp").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>


<!— CSS —>
<style>
body {
	background-color: white;
	background: url("") no-repeat center center fixed;
	webkit-background-size: cover;
	moz-background-size: cover;
	o-background-size: cover;
	background-size: cover;
}
</style>

<title>Main</title>

</head>

<body>

	<div class="container-fluid">
		<div>
			<jsp:include page="header.jsp" flush="false" />
			<div class="row">
				<div class="col-md-9" align="center">
					<div>
						<form>
							<h4>Search</h4>
							<input type="text" name="" placeholder="Search"> <br>
							<br>
							<button type="submit" name="">search</button>
						</form>
						<br> or
						<form id="form1" runat="server" action="inception" method="post"
							enctype="multipart/form-data">
							<p>
								<input id="imgInp" type="file" name="uploadfile"
									required="required" style="display: none;" /> <img
									src="https://cdn4.iconfinder.com/data/icons/48-bubbles/48/25.Camera-Front-128.png"
									border="0" onclick="document.all.uploadfile.click();"
									id="imgbtn">
							</p>
							<h4>Click the Camera and Upload your Image</h4>
							<br> <img id="blah" style="width: 80%; height: auto;" /> <br>
							<br> <input type="submit" value="Search">
						</form>
					</div>
				</div>
				<div class="col-md-3"><jsp:include page="tagList.jsp"
						flush="false" /></div>
			</div>
		</div>
	</div>

	<!— jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) —>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!— 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 —>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>