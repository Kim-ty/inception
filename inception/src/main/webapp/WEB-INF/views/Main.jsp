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
	/* background:
		url("https://rosaelizabethquintana.files.wordpress.com/2013/05/291h.jpg")
		no-repeat center center fixed;
	webkit-background-size: cover;
	moz-background-size: cover;
	o-background-size: cover;
	background-size: cover;
}

div.jumbotron {
	padding-left: 10px;
	padding-right: 10px;
	background-color: transparent;
}

/* modal */ . modal { display : none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: auto;
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
	width: 18%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
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
	<div class="jumbotron">

		<header>

			<h1>Image</h1>

			<div id="login" align="right">
				<p>
					<c:choose>
						<c:when test="${not empty sessionScope.loginInfo}">
					welcome ${sessionScope.loginInfo.userid} !!
						<a href="#"><input class="btn btn-default" type="submit" name="Profile"
								value="Profile"></a>

							<a href="/user/logout"><input class="btn btn-default" type="submit" name="Log out"
								value="Log out"></a>

						</c:when>
						<c:otherwise>

							<!-- Trigger/Open The Modal -->

							<button id="myBtn" class="btn btn-default">Login</button>

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
				</p>
			</div>

		</header>
		<br> <br>
		<nav>

			<div id="categories" align="center">
				<c:forEach var="vo" items="${categoryList }">
					<a href="/boardList/${vo.category }"><input type="submit"
						name="category1" value=${vo.category } class="btn btn-default"></a>

				</c:forEach>
			</div>

		</nav>
		<br> <br> <br>
		<section>

			<div id="search" align="center">

				<form>
					<p>
					<h4>Search :</h4>
					<input type="text" name="" class="form-control"
						placeholder="Search" width="300px">
					<button type="submit" name="" class="btn btn-default">search</button>
					</p>
				</form>
				<br>
				<h4>
						Or<br /><br />Click the Camera and Upload your Image
					</h4>

				<form id="form1" runat="server" action="inception" method="post"
					enctype="multipart/form-data">

					<p>
						<input id="imgInp" type="file" name="uploadfile"
							required="required" style="display: none;" /> <img
							src="https://cdn4.iconfinder.com/data/icons/48-bubbles/48/25.Camera-Front-128.png"
							border="0" onclick="document.all.uploadfile.click();" id="imgbtn">
					
					</p>

					<br> <img id="blah"
						src="https://cdn4.iconfinder.com/data/icons/48-bubbles/48/18.Pictures-Day-128.png" />
					<br> <input type="submit" value="Search"
						class="btn btn-default">

				</form>

			</div>

		</section>

	</div>
</body>

</html>
