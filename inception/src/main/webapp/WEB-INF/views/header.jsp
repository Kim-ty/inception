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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

div.jumbotron {
	padding-top: 15px;
	padding-left: 15px;
	padding-right: 15px;
	padding-bottom: 0px;
	background-color: transparent;
}

div.logo {
	font-size: 250%;
}

#login {
	float: right;
}
</style>

</head>

<body>

	<div class="jumbotron" style="margin-bottom: 0px;">

		<div>
			<div class="logo">
				<h1>
					<a href="http://localhost:8080/">Inception</a>
				</h1>

				<div id="login">


					<c:choose>

						<c:when test="${not empty sessionScope.loginInfo}">
							<a href="/board/write" class="w3-button w3-small w3-black">Write</a>
							welcome ${sessionScope.loginInfo.userid} !!
							<a href="/profile/${sessionScope.loginInfo.userid}/"><input
								class="w3-button w3-small w3-black" type="submit" name="Profile"
								value="Profile"></a>

							<a href="/user/logout"><input
								class="w3-button w3-small w3-black" type="submit" name="Log out"
								value="Log out"></a>
						</c:when>
						<c:otherwise>
							<!-- Trigger/Open The Modal -->
							<button id="myBtn" class="w3-button w3-large w3-black">Login</button>
							<!-- The Modal -->
							<div id="myModal" class="modal">
								<div class="modal-dialog">
									<!-- Modal content -->
									<div class="modal-content">
										<div class="modal-header">

											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>

										</div>
										<div class="modal-body">
											<jsp:include page="Login.jsp" />
										</div>
									</div>
								</div>
							</div>

							<script>
								// Get the modal
								var modal = document.getElementById('myModal');

								// Get the button that opens the modal
								var btn = document.getElementById("myBtn");

								// Get the <span> element that closes the modal
								var span = document
										.getElementsByClassName("close")[0];

								// When the user clicks the button, open the modal
								btn.onclick = function() {
									modal.style.display = "block";
								}

								// When the user clicks on <span> (x), close the modal
								span.onclick = function() {
									modal.style.display = "none";
								}

								// When the user clicks anywhere outside of the modal, close it
								window.onclick = function(event) {
									if (event.target == modal) {
										modal.style.display = "none";
									}
								}
							</script>

						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<hr>
		</div>



		<c:choose>
			<c:when test="${not  empty categoryList}">
				<div class="w3-hide-small" id="categories" align="left">
					<c:forEach var="vo" items="${categoryList }">

						<a href="/board/boardList/${vo.category }"> <input
							type="submit" name="category1" value=${vo.category }></a>
					</c:forEach>
				</div>
				<div>
					<a href="javascript:void(0)"
						class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
						onclick="w3_open(mySidebar)"> Category </a>
				</div>

				<div>
					<a href="javascript:void(0)"
						class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
						onclick="w3_open(mySideTags)"> Hashtag </a>
				</div>

				<nav
					class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
					style="display: none" id="mySidebar">
					<a href="javascript:void(0)" onclick="w3_close(mySidebar)"
						class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
					<c:forEach var="vo" items="${categoryList }">

						<a href="/board/boardList/${vo.category }"
							onclick="w3_close(mySidebar)" class="w3-bar-item w3-button">${vo.category }</a>

					</c:forEach>
				</nav>

				<nav
					class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
					style="display: none" id="mySideTags">
					<a href="javascript:void(0)" onclick="w3_close(mySideTags)"
						class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
					<c:forEach var="tagList" items="${tagList}">
						<a href="/board/boardList/tag${tagList.tag}"
							onclick="w3_close(mySideTags)" class="w3-bar-item w3-button">${tagList.tag}</a>
					</c:forEach>
				</nav>
				<hr>
	</div>
	</c:when>
	<c:otherwise>

	</c:otherwise>

	</c:choose>


	<script>
		// Toggle between showing and hiding the sidebar when clicking the menu icon
		function w3_open(element) {
			if (element.style.display === 'block') {
				element.style.display = 'none';
			} else {
				element.style.display = 'block';
			}
		}
		// Close the sidebar with the close button
		function w3_close(element) {
			element.style.display = "none";
		}
	</script>
</body>

</html>
