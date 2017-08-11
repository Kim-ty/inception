<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.8/angular.min.js"></script>



<link rel="stylesheet" href="/resources/summernote/dist/summernote.css">
<script src="/resources/summernote/dist/summernote.js"></script>
<!--   <script src="follow.js" ></script> -->
<script type="text/javascript">
	function submitForm() {

		var contents = $(".summernote").summernote("code");
		var regex = /<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>/i;
		///img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*/g;
		var src
		if (regex.exec(contents) == null) {
			src = "/uploadimage/default.jpg";
			$("thumbnail").val(src);
		} else {
			src = regex.exec(contents)[0];
			$("#thumbnail").val(src);
			var sibal = $("#thumbnail").val();
		}
		$("#contents").val(contents);
		var boardForm = document.write;
		if ($("#tag").val() != ' ') {
			var strArray = ($("#tag").val()).split('#');
			for ( var i in strArray) {
				if (strArray[i] != '') {
					var input = document.createElement("input");
					input.type = "text";
					input.name = "tagList[" + (i-1) + "].tag";
					input.value = strArray[i];
					alert(input.name + ',' + input.value);
					boardForm.appendChild(input);
				}
			}
		} else {
			var input = document.createElement("input");
			input.type = "text";
			input.name = "tagList[0].tag";
			input.value = " ";
			boardForm.appendChild(input);
		}

		$("#boardInsert").submit();
	}
</script>
</head>

<body>


	<form id="boardInsert" name="write" role="form" method="post"
		action="/board/boardInsert">
		<div class="form-group">
			<input id="title" type="text" name="title" class="form-control"
				placeholder="Enter Your Story title" />
		</div>
		<div class="form-group">
			<select id="category" name="category" class="form-control">
				<option value="의류">의류</option>
			</select>
		</div>

		<div id="summernotecontents" class="summernote"></div>
		<script type="text/javascript">
			$(document).ready(function() {
				$('.summernote').summernote({
					height : 500,
					callbacks : {
						onImageUpload : function(files) {
							for (var i = 0; i < files.length; i++) {
								send(files[i]);
							}

						}
					}
				});
			});

			function send(file) {
				//			alert("파일업로드시작");
				if (file.type.includes('image')) {
					var name = file.name.split(".");
					name = name[0];
					var data = new FormData();
					data.append('file', file);
					$.ajax({
						url : '/board/uploadImage',
						type : 'POST',
						contentType : false,
						cache : false,
						processData : false,
						data : data,
						success : function(url) {
							alert("사진업로드 성공!");
							$('#summernotecontents').summernote('insertImage',
									url);
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert(textStatus + " " + errorThrown);
						}
					});
				}
			}
		</script>
		<div class="form-group">
			<textarea name="contents" id="contents" class="form-control"
				style="display: none;">
			</textarea>
		</div>
		<div class="form-group">
			<input id="tag" type="text" name="tag" class="form-control"
				placeholder="Enter tag" />
		</div>
		<div class="form-group">
			<textarea id="thumbnail" name="thumbnail" class="form-control"
				style="display: none;">
			</textarea>
		</div>
	</form>

	<input type="button" name="edit" onclick="submitForm()"
		value="Share my story">

</body>

</html>