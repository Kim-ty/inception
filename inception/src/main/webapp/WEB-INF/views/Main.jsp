<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


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


<!-- CSS -->
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

	<jsp:include page="header.jsp" flush="false" />

	<div class="w3-row-padding w3-center w3-margin-top">
		<div class="w3-threequarter">
			<div class="w3-card-2 w3-container" style="min-height: 460px">

				<form>
					<h4>Search</h4>
					<input type="text" name="" placeholder="Search"> <br>
					<br>
					<button type="submit" name="" class="btn btn-default">search</button>
				</form>
				<br> or
				<form id="form1" runat="server" action="inception" method="post"
					enctype="multipart/form-data">
					<p>
						<input id="imgInp" type="file" name="uploadfile"
							required="required" style="display: none;" /> <img
							src="https://cdn4.iconfinder.com/data/icons/48-bubbles/48/25.Camera-Front-128.png"
							border="0" onclick="document.all.uploadfile.click();" id="imgbtn">

					</p>
					<h4>Click the Camera and Upload your Image</h4>

					<br> <img id="blah" style="width: 80%; height: auto;" /> <br>
					<br> <input type="submit" value="Search"
						class="btn btn-default">

				</form>

			</div>
		</div>
		<div class="w3-quarter w3-hide-small" style="width: 13%" align="left">
			<div class="w3-card-2 w3-container" style="min-height: 460px">
<<<<<<< HEAD
				<h2>Hashtags</h2>

				<c:forEach var="tagList" items="${tagList}">
					<a href="/board/boardList/tag${tagList.tag}">${tagList.tag}</a>
					<br>
=======

				<h2>
					tags
					<hr>
				</h2>

				<c:forEach var="tagList" items="${tagList}">
					<p>
						<a href="/board/boardList/tag${tagList.tag}">${tagList.tag}</a>
					</p>


>>>>>>> 13885420114754cbfbdd7e99d1110d6e8d49e72c
				</c:forEach>

			</div>
		</div>
	</div>

</body>

</html>
