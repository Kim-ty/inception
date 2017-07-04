<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">


<style>
div.container {
	width: 100%;
	border: 2px solid gray;
}

header, footer {
	padding: 1em;
	color: black;
	background-color: gray;
	clear: left;
	text-align: center;
}

nav {
	float: top;
	max-width: width;
	margin: 3em;
	padding: 1em;
	text-align: center;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul a {
	text-decoration: none;
}

article {
	margin-left: 170px;
	border-left: 1px solid gray;
	padding: 1em;
	overflow: hidden;
}

.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 1;
	/* Sit on top */
	padding-top: 100px;
	/* Location of the box */
	left: 0;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	/* Fallback color */
	background-color: rgba(0, 0, 0, 0.4);
	/* Black w/ opacity */
}
/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.3s;
	animation-name: animatetop;
	animation-duration: 0.3s
}
/* Add Animation */
@
-webkit-keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
.modal-body {
	padding: 2px 16px;
}

</style>
<title>Main</title>
</head>

<body>

	<div class="container">

		<header>


			<h1>Image</h1>
			<p style="text-align: center;">
			<p style="text-align: left;">
				<a href="/"><img
					src="http://kinimage.naver.net/20170630_163/1498780202972xwE1E_GIF/3477def4c30cd39d708e90448a3db9a5.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /> <img
					src="http://kinimage.naver.net/20170412_168/1491991851891x1pH6_GIF/1491991849429.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /></a>
			</p>

			<p style="text-align: right;">
				<c:choose>
					<c:when test="${not empty sessionScope.loginInfo}">
					${sessionScope.loginInfo.userid}님 개반갑
						<a href="#"><input type="submit" name="Profile"
							value="Profile"></a>

						<a href="/user/logout"><input type="submit" name="Log out"
							value="Log out"></a>

					</c:when>
					<c:otherwise>


						<!-- Trigger/Open The Modal -->
						<button id="myBtn">Login</button>

						<!-- The Modal -->
						<div id="myModal" class="modal">

							<!-- Modal content -->
							<div class="modal-content">
								<div class="modal-header">
									<span class="close">&times;</span>
								</div>
								<div class="modal-body">
									<jsp:include page="Login.jsp" />

								</div>
							</div>
						</div>
						<script>
							// Get the modal
							var modal = document.getElementById('myModal');

							// Get the button that opens the modal
							var btn = document.getElementById("myBtn");

							// Get the <span> element that closes the modal
							var span = document.getElementsByClassName("close")[0];

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


			</p>


			</p>

			</p>

		</header>

		<nav>

			<div>
				<c:forEach var="vo" items="${categoryList }">
					<a href="/${vo.category }"><input type="submit"
						name="category1" value=${vo.category }></a>

				</c:forEach>
			</div>

		</nav>

		<article>
			<h1>검색이미지를 던지든 키워드를 입력하든</h1>


			<form>
				Searching : <input type="text" name="">
				<button type="submit" name="">search</button>
			</form>
			<form action="inception" method="post" enctype="multipart/form-data">
				이미지분석<input type="file" name="uploadfile" required="required">
				<input type="submit" value="Search">
			</form>

		</article>

		<footer>Footer</footer>

	</div>

</body>

</html>
