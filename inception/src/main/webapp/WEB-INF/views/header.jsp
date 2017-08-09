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

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 부트스트랩 -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">



</head>

<body>
	<div class="container-fluid">

		<div class="row">

			<div>
				<div class="logo">
					<div>
						<h1>
							<a href="http://localhost:8080/">Inception</a>
						</h1>
						<hr>
					</div>
				</div>
			</div>
			<div>
				<div id="login">
					<div>
						<c:choose>
							<c:when test="${not empty sessionScope.loginInfo}">
								<div align="right">

									<a href="/board/write">Write</a> <span>welcome
										${sessionScope.loginInfo.userid} !! </span> <a
										href="/profile/${sessionScope.loginInfo.userid}/">profile</a>


									<a href="/user/logout">Log out</a>



								</div>
							</c:when>
							<c:otherwise>

								<!-- <a> tag trigger modal -->

								<div align="right">
									<h3>
										<a data-toggle="modal" data-target="#loginModal"> Login </a>
									</h3>
								</div>

								<!-- Modal -->
								<div class="modal fade" id="loginModal" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel"></h4>
											</div>
											<div class="modal-body">
												<jsp:include page="Login.jsp" />
											</div>
										</div>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<hr>
			</div>

			<div>
				<div id="categories">
					<div>
						<c:choose>
							<c:when test="${not  empty categoryList}">

								<div class="w3-hide-small" id="categories" align="left">
									<div class="row">
										<c:forEach var="vo" items="${categoryList }">
											<div class="col-md-1">
												<a href="/board/boardList/${vo.category }">
													${vo.category } </a>
											</div>
										</c:forEach>
									</div>
								</div>

								<div>
									<a href="javascript:void(0)"
										class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
										onclick="w3_open(mySidebar)"> Category </a>
								</div>

								<div>
									<a href="javascript:void(0)"
										class="w3-bar-item w3-button w3-left  w3-hide-large w3-hide-medium"
										onclick="w3_open(mySideTags)"> tag </a>
								</div>

								<nav
									class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
									style="display: none" id="mySidebar">
									<a href="javascript:void(0)" onclick="w3_close(mySidebar)"
										class="w3-bar-item w3-button w3-large w3-padding-16">Close
										×</a>

									<c:forEach var="vo" items="${categoryList }">

										<a href="/board/boardList/${vo.category }"
											onclick="w3_close(mySidebar)" class="w3-bar-item w3-button">${vo.category }</a>

									</c:forEach>
								</nav>

								<nav
									class="w3-sidebar w3-bar-block w3-light-grey w3-card-2 w3-animate-left w3-hide-medium w3-hide-large"
									style="display: none" id="mySideTags">
									<a href="javascript:void(0)" onclick="w3_close(mySideTags)"
										class="w3-bar-item w3-button w3-large w3-padding-16">Close
										×</a>
									<c:forEach var="tagList" items="${tagList}">
										<a href="/board/boardList/tag${tagList.tag}"
											onclick="w3_close(mySideTags)" class="w3-bar-item w3-button">${tagList.tag}</a>
									</c:forEach>
								</nav>

								<hr>

							</c:when>
							<c:otherwise>

							</c:otherwise>

						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- sidebars -->
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

	<!-- image file upload -->
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





</body>

</html>
