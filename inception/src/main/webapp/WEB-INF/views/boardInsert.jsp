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

<link rel="stylesheet" href="/resources/summernote/dist/summernote.css">
<script src="/resources/summernote/dist/summernote.js"></script>
<!--   <script src="follow.js" ></script> -->
<script type="text/javascript">
	
</script>
</head>

<body>
	<div id="summernote"></div>
<!-- 	<textarea id="preview" ng-model="htmlcontent" -->
<!-- 		style="width: 100%; display: none"></textarea> -->

<script type="text/javascript">
	function DemoController($scope) {
		  $scope.text = "Hello World";
		}

	
	$(document).ready(function() {
			$('#summernote').summernote({
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
			alert("파일업로드시작");
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
						alert(url);
						$('#summernote').summernote('insertImage', url);
					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert(textStatus + " " + errorThrown);
					}
				});
			}
		}
	</script>

	


</body>

</html>