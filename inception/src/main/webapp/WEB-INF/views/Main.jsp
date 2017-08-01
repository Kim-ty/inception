<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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

div.jumbotron {
	padding-top: 1pc;
	padding-left: 15px;
	padding-right: 15px;
	background-color: transparent;
}

div.logo {
	font-size: 250%;
}

#login {
	float: right;
}
</style>

<title>Main</title>

</head>

<body>

	<div class="jumbotron">
		<header>
			<div style="border-bottom: 1px solid gold">
				<div class="logo">
					Inception
					<div id="login">


						<c:choose>
							<c:when test="${not empty sessionScope.loginInfo}">
							welcome ${sessionScope.loginInfo.userid} !!
							<a href="/profile/${sessionScope.loginInfo.userid}/"><input
									class="btn btn-default" type="submit" name="Profile"
									value="Profile"></a>

								<a href="/user/logout"><input class="btn btn-default"
									type="submit" name="Log out" value="Log out"></a>

							</c:when>
							<c:otherwise>
								<!-- Trigger/Open The Modal -->
								<button id="myBtn" class="btn btn-default">Login</button>
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
									var modal = document
											.getElementById('myModal');

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
			</div>

			<div class="w3-hide-small" id="categories" align="left">
				<c:forEach var="vo" items="${categoryList }">
					<a href="/board/boardList/${vo.category }"><input type="submit"
						name="category1" value=${vo.category } class="btn btn-default"></a>
				</c:forEach>
			</div>
			<div>
				<a href="javascript:void(0)"
					class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
					onclick="w3_open()"> Category </a>
			</div>
			
			<div>
				<a href="javascript:void(0)"
					class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
					onclick="w3_open2()"> Hashtag </a>
			</div>

			<nav
				class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
				style="display: none" id="mySidebar">

				<a href="javascript:void(0)" onclick="w3_close()"
					class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>

				<c:forEach var="vo" items="${categoryList }">

					<a href="/board/boardList/${vo.category }" onclick="w3_close()"
						class="w3-bar-item w3-button">${vo.category }</a>

				</c:forEach>
			</nav>

			<nav
				class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
				style="display: none" id="mySideTags">

				<a href="javascript:void(0)" onclick="w3_close2()"
					class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>

				<c:forEach var="vo" items="${categoryList }">
						tags<br>
						tags<br>
						tags<br>
						tags<br>

				</c:forEach>
			</nav>


		</header>
	</div>



	<div class="w3-row-padding w3-center w3-margin-top">
		<div class="w3-threequarter">
			<div class="w3-card-2 w3-container" style="min-height: 460px">

				<form>
					<h4>Search</h4>
					<input type="text" name="" placeholder="http://example.com">
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

					<br> <img id="blah" src="" style="width: 80%; height: auto;" />

					<br> <input type="submit" value="Search"
						class="btn btn-default">

				</form>

			</div>
		</div>
		<div class="w3-quarter w3-hide-small">
			<div class="w3-card-2 w3-container" style="min-height: 460px">
				<h2>Hashtags</h2>
				<ul>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
					<li>#tag</li>
				</ul>
			</div>
		</div>
	</div>




mySideTags

	<script>

		// Toggle between showing and hiding the sidebar when clicking the menu icon
		var mySidebar = document.getElementById("mySidebar");
		function w3_open() {
			if (mySidebar.style.display === 'block') {
				mySidebar.style.display = 'none';
			} else {
				mySidebar.style.display = 'block';
			}
		}
		// Close the sidebar with the close button
		function w3_close() {
			mySidebar.style.display = "none";
		}

		var mySideTags = document.getElementById("mySideTags");
		function w3_open2() {
			if (mySideTags.style.display === 'block') {
				mySideTags.style.display = 'none';
			} else {
				mySideTags.style.display = 'block';
			}
		}
		// Close the sidebar with the close button
		function w3_close2() {
			mySideTags.style.display = "none";
		}
	</script>
</body>

</html>
