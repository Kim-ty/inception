<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.8/angular.min.js"></script>


<script type="text/javascript">
	function submitForm() {

		var boardForm = document.write;
		var input = document.createElement("input");
		input.type = "text";
		input.name = "profilepicture";
		input.value = $(".uploadedList").html;
		alert(input.value);
		boardForm.appendChild(input);
		$("#UserUpdate").submit();
	}
</script>
<style>
.fileDrop {
	width: 150px;
	height: 40px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
</style>

<script>
	$(document)
			.ready(
					function() {
						$(".fileDrop").on("dragenter dragover",
								function(event) {
									event.preventDefault(); // 기본효과를 막음
								});
						$(".fileDrop")
								.on(
										"drop",
										function(event) {
											event.preventDefault(); // 기본효과를 막음
											var files = event.originalEvent.dataTransfer.files;
											var file = files[0];
											console.log(file);
											var formData = new FormData();
											formData.append("file", file);
											$
													.ajax({
														type : "post",
														url : "/board/uploadImage",
														data : formData,
														dataType : "text",
														processData : false,
														contentType : false,
														success : function(data) {

															$(".fileDrop")
																	.html(
																			"<img src='"+data+"' style='width:100px;height:auto'>");
															$(".uploadedList")
																	.html(data);
														}
													});
										});
					});
</script>
</head>

<body>
	<!-- 파일을 업로드할 영역 -->
	<div style='width: 300px; height: 300px;'>
		<div class="fileDrop">Drag And Drop your ProFile Image here</div>
		<!-- 업로드된 파일 목록 -->
	</div>
	<div id="pictureURL" class="uploadedList"></div>

	<form name="write"></form>
	<input type="button" name="edit" onclick="submitForm()"
		value="UpdateMyInfo">



</body>

</html>