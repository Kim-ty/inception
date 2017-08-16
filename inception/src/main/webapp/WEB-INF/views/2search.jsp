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

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">


				<div>

					<div class="row">
						<div align="center">
							<form>
								<input type="text" name="" placeholder="Search"> <br>
								<br> <input type="submit" name="" value="Search">

							</form>
							<br> or
							<form id="form1" runat="server" action="inception" method="post"
								enctype="multipart/form-data">
								<p>
									<input id="imgInp" type="file" name="uploadfile"
										required="required" style="display: none;" /> <img
										src="data:image/png;base64,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"
										border="0" onclick="document.all.uploadfile.click();"
										id="imgbtn">
								</p>
								<h4>Click the Camera and Upload your Image</h4>
								<br> <img id="blah" style="width: 80%; height: auto;" /> <br>
								<br> <input type="submit" value="Search">
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>