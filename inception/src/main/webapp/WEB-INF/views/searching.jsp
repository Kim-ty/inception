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

<title>title</title>



</head>
<body>
	<div>
		<div align="center">
			<div>
				<h4>Search</h4>
				<input type="text" name="" placeholder="Search"> <br> <br>
				<button type="submit" name="">search</button>
			</div>
			<br> or
			<div>
				<form id="form1" runat="server" action="inception" method="post"
					enctype="multipart/form-data">
					<p>
						<input id="imgInp" type="file" name="uploadfile"
							required="required" style="display: none;" /> <img
							src="https://cdn4.iconfinder.com/data/icons/48-bubbles/48/25.Camera-Front-128.png"
							border="0" onclick="document.all.uploadfile.click();" id="imgbtn">
					</p>
					<h4>Click the Camera and Upload your Image</h4>
					<br> <img id="blah" style="width: 100%; height: auto;" /> <br>
					<br> <input type="submit" value="Search"> <br>
				</form>
				<br>
			</div>
		</div>
	</div>



	<script>
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




</body>
</html>