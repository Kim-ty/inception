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


<title>Main</title>


<style>
.modal-backdrop {
	opacity: 0.2 !important;
}
</style>


</head>
<body>

	<div>
		<div>
			<a href="http://localhost:8080/"><h2>Inception</h2></a>

			<div id="login">

				<c:choose>

					<c:when test="${not empty sessionScope.loginInfo}">
						<div>
							<div align="right">
								<a href="/board/write">Write</a> welcome
								${sessionScope.loginInfo.userid} !! <a
									href="/profile/${sessionScope.loginInfo.userid}/"> Profile
								</a> <a href="/user/logout"> Log out </a>
							</div>
						</div>

					</c:when>
					<c:otherwise>

						<!-- Trigger the modal with a <A>tag -->
						<div>
							<div align="right">
								<a data-toggle="modal" data-target="#myModal">Login</a>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
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

			</div>
			<hr>
		</div>

		<div align="center">

			<c:choose>
				<c:when test="${not  empty categoryList}">

					<div id="categories">

						<c:forEach var="vo" items="${categoryList }">
							<a href="/board/boardList/${vo.category }"> <input
								type="submit" name="category1" value=${vo.category }>
							</a>
						</c:forEach>

					</div>

					<div>
						<a href="javascript:void(0)" onclick="w3_open(mySidebar)">
							Category </a>
					</div>

					<div>
						<a href="javascript:void(0)" onclick="w3_open(mySideTags)">
							tag </a>
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
								onclick="w3_close(mySideTags)">${tagList.tag}</a>
						</c:forEach>
					</nav>
					<hr>
				</c:when>
			</c:choose>
		</div>
	</div>


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
