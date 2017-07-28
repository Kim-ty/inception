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
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/3.3.5/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/resources/summernote/dist/summernote.css">
<script src="/resources/summernote/dist/summernote.js"></script>
<!--   <script src="follow.js" ></script> -->
<script type="text/javascript">
	
</script>
</head>

<body>
	<div id="summernote"></div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#summernote').summernote({
				onImageUpload : function(files, editor, welEditable) {
					sendFile(files[0], editor, welEditable);

				}
			});
		});
		
		function sendFile(file,editor,welEditable){
			alter("파일을 보냅니다")
			data = new FormData();
			data.append("file",file);
			$.ajax({
				data: data,
				dataType:'json',
				type:"POST",
				url:"/board/uploadImage",
				cache:false,
				contentType:false,
				processData:false,
				succenss:function(url){
					alter("성공적으로 받았습니닷")
					editor.insertImage(welEditable,url);
				}
			})
		}
	</script>
</body>

</html>