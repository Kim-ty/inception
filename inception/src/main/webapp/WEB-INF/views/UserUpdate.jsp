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
						var updateCheck = document.getElementById('update');
						updateCheck.disabled = true;
						var pwFlag = false;
						var emailFlag = false;

						$("#userpw").keypress(
								function() {
									var pw = $("#userpw").val();
									var pw2 = $("#userpw2").val();
									if (pw.length > 0 && pw.length < 12) {
										$("#execp").text("비밀번호가 너무 짧습니다").css(
												"color", "red");
										pwFlag = false;
										updateChecker();
									} else {
										if (pw != pw2) {
											$("#execp").text("비밀번호가 일치하지않습니다.")
													.css("color", "red");
											pwFlag = false;
											updateChecker();
										} else {
											$("#execp").text("비밀번호가 일치 합니다.")
													.css("color", "blue");
											pwFlag = true;
											updateChecker();
										}
									}
								});
						
						$("#userpw2").blur(
								function() {
									var pw = $("#userpw").val();
									var pw2 = $("#userpw2").val();
										if (pw != pw2) {
											$("#execp").text("비밀번호가 일치하지않습니다.")
													.css("color", "red");
											pwFlag = false;
											updateChecker();
										} else {
											$("#execp").text("비밀번호가 일치 합니다.")
													.css("color", "blue");
											pwFlag = true;
											updateChecker();
										}
									} 
						);

						$("#useremail").keypress(
								function() {
									var email = $("#useremail").val();
									if (email.indexOf("@") != -1
											&& email.indexOf(".com") != -1) {
										$("#execp2").text("올바른 이메일입니다.").css(
												"color", "blue");
										emailFlag = true;
										updateChecker();
									} else {
										$("#execp2").text("이메일형식이 올바르지 않습니다.")
												.css("color", "red");
										emailFlag = false;
										updateChecker();
									}
								});

						$("#useremail").blur(
								function() {
									var email = $("#useremail").val();
									if (email.indexOf("@") != -1
											&& email.indexOf(".com") != -1) {
										$("#execp2").text("올바른 이메일입니다.").css(
												"color", "blue");
										emailFlag = true;
										updateChecker();
									} else {
										$("#execp2").text("이메일형식이 올바르지 않습니다.")
												.css("color", "red");
										emailFlag = false;
										updateChecker();
									}
								});

						function updateChecker() {
							var updateCheck = document.getElementById('update');
							if (pwFlag == true && emailFlag == true) {
								updateCheck.disabled = false;
							} else {
								updateCheck.disabled = true;
							}
						}

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

															$(".fileDrop").html("<img src='"+data+"' style='width:100px;height:auto'>");
															$("#profilePicture").val(data);
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

	<form id="updateUser" name="updateuserDTO" role="form" method="post" action="/user/updateUser">
		<div class="form-group">
			<label for="profilePicture">ProfilePictureURL</label><br>
			<input id="profilePicture" name="profilepicture" type="text" readonly>
		</div>
		<div class="form-group">
			<label for="userpw">USER PassWard</label><br> <input id="userpw"
				type="text" name="userpw">
		</div>
		<div class="form-group">
			<label for="userpw">USER PassWard2</label><br> <input id="userpw2"
				type="text" name="userpw2"> <span id="execp"></span>
		</div>
		<div class="form-group">
			<label for="useremail">USER Email</label><br> <input id="useremail"
				type="text" name="useremail"> <span id="execp2"></span>
		</div>

		<div class="form-group">
			<input id="update" type="submit" name="edit" value="UpdateMyInfo"/>
		</div>
		
	</form>




</body>

</html>