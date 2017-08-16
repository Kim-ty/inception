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

<!-- jQuery -->
<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/jquery/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Bootstrap Core CSS -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link
	href="/resources/startbootstrap-grayscale-gh-pages/css/grayscale.min.css"
	rel="stylesheet">

<script>
	$(document).ready(function() {
		$('#moreview').click(function() {
			alert($(location).attr('pathname'));
			//                    $.ajax({
			//                             url : $(location).attr('pathname'),
			//                             type : "POST",
			//                             dataType : "json",
			//                             data : {
			// 								rnum : 10
			//                             },
			//                             success : function(boardList) {
			//                                $.each(boardList,function(key,value) {
			//                                   $("#boardlistinfi").append(ajaxlist(value.bidx,value.thumbnail,value.title,value.contents,value.userid,value.writedate,value.category,value.hitcnt,value.gcnt,value.bcnt,value.scrapecnt,value.rpcnt));
			//                                });
			//                             }
			//                          });
		});

	});

	function removeTag(content) {
		return content.replace(/(<([^>]+)>)/gi, "");
	}
	$(function() {
		$("#popbutton").click(function() {
			$('div.modal').modal({
				remote : 'layer.html'
			});
		})
	})

	function ajaxlist(bidx, thumbnail, title, contents, userid, writedate,
			category, hitcnt, gcnt, bcnt, scrapecnt, rpcnt) {
		var row = $(

		//디자인시 여기도 바꿔야함
		"<div class='row'>" + "<div class='col-md-2'>"
				+ "<a href='/board/boardDetail/"+bidx+"'>"
				+ thumbnail
				+ "</a><img src='http://cafefiles.naver.net/MjAxNzA4MDdfOCAg/MDAxNTAyMTE3MDg0MTI1.IWJYc1vg1mLtBVE0uB9qOCM3P5Lnm9i2qKnbbwHoUukg.zE9P69X2q0EK7tPDnxUy56KG28xa5DQwZTJNMKklgDEg.PNG.altmxjqkr1478/235.png'>"
				+ "</div>"
				+

				"<div class='col-md-10'>"
				+ "<div align='left'>"
				+ "<h2>"
				+ "<a href='/board/boardDetail/"+bidx+"'> <c:choose>"
				+ "<c:when test='${not empty sessionScope.loginInfo}'>"
				+ title
				+ "</c:when>"
				+ "<c:otherwise>"
				+ "<a data-toggle='modal' data-target='#loginModal'> Login</a>"
				+ "</c:otherwise>"
				+ "</c:choose>"
				+ "</a>"
				+ "</h2>"
				+ "</div>"
				+ "<div align='center'>"
				+ "<h4>"
				+ "<a href='/board/boardDetail/"+bidx+"'>"
				+ contents
				+ "</a>"
				+ "</h4>"
				+ "</div>"
				+

				"<div class='container' align='right'>"
				+ "<div class='row'>"
				+

				"<div class='col-sm-2'>"
				+ "<span class='glyphicon glyphicon-user' aria-hidden='true'></span>"
				+ userid
				+ "</div>"
				+ "<div class='col-sm-3'>"
				+ "<span class='glyphicon glyphicon-time' aria-hidden='true'></span>"
				+ writedate
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-th-list' aria-hidden='true'></span>"
				+ category
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span>"
				+ hitcnt
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-thumbs-up' aria-hidden='true'></span>"
				+ gcnt
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-thumbs-down' aria-hidden='true'></span>"
				+ bcnt
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-heart-empty' aria-hidden='true'></span>"
				+ vo.scrapecnt
				+ "</div>"
				+ "<div class='col-sm-1'>"
				+ "<span class='glyphicon glyphicon-comment' aria-hidden='true'></span>"
				+ vo.rpcnt
				+ "</div>"
				+ "</div>"
				+ "</div>"
				+ "</div>"
				+ "</div>" + "<hr>");
	}
</script>

<style>
.active img {
	resize: both; /* 이미지 최대 사이즈에 적용 */
	float: center; /* 가운데 정렬 */
	width: 50px; /* 넓이를 지정 */
	height: auto; /* 높이를 지정 */
	margin: 5px 0; /* 여백을 적용 4가지 조건이 가능 위쪽, 오른쪽, 아래쪽, 왼쪽 순서 */
}

img {
	max-width: 140px;
	max-height: auto;
}
</style>

</head>

<body>

	<div>
		<c:import url="/category"></c:import>

		<div class="row">
			<div class="col-md-9">
				<div id="boardlistinfi">
					<a href="/board/write">Write</a>
					<c:forEach var="vo" items="${boardList}" end="10">
						<div class="row">
							<div class="col-md-2">
								<a href="/board/boardDetail/${vo.bidx}">${vo.thumbnail} </a><img
									src="http://cafefiles.naver.net/MjAxNzA4MDdfOCAg/MDAxNTAyMTE3MDg0MTI1.IWJYc1vg1mLtBVE0uB9qOCM3P5Lnm9i2qKnbbwHoUukg.zE9P69X2q0EK7tPDnxUy56KG28xa5DQwZTJNMKklgDEg.PNG.altmxjqkr1478/235.png">

							</div>

							<div class="col-md-10">
								<div align="left">
									<h2>
										<a href="/board/boardDetail/${vo.bidx}"> <c:choose>
												<c:when test="${not empty sessionScope.loginInfo}">
												${vo.title}
											</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
										</a>
									</h2>
								</div>
								<div align="center">
									<h4>
										<a href="/board/boardDetail/${vo.bidx}">${vo.contents}</a>
									</h4>
								</div>

								<div class="container" align="right">
									<div class="row">

										<div class="col-sm-2">
											<span class="glyphicon glyphicon-user" aria-hidden="true"></span>${ vo.userid }</div>
										<div class="col-sm-3">
											<span class="glyphicon glyphicon-time" aria-hidden="true"></span>${ vo.writedate }</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>${ vo.category }</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>${ vo.hitcnt }</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-thumbs-up"
												aria-hidden="true"></span> ${ vo.gcnt }
										</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-thumbs-down"
												aria-hidden="true"></span>${ vo.bcnt }</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-heart-empty"
												aria-hidden="true"></span>${ vo.scrapecnt }</div>
										<div class="col-sm-1">
											<span class="glyphicon glyphicon-comment" aria-hidden="true"></span>${ vo.rpcnt }</div>

									</div>
								</div>
							</div>
						</div>
						<hr>
					</c:forEach>
					<div id="moreview">더보기</div>
				</div>
			</div>
			<div class="col-md-3">
				<div>
					<c:import url="/board/hottagList"></c:import>
				</div>
			</div>
		</div>
	</div>




</body>

</html>
