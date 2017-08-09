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


<script>
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
	<div class="container-fluid">
		<div>
			<c:import url="/category"></c:import>
			<div class="row">
				<div class="col-md-9">
					<div>
						<c:forEach var="vo" items="${boardList}">
							<div class="row">
								<div class="col-md-2">
									<a href="/board/boardDetail/${vo.bidx}">${vo.thumbnail} </a><img
										src="http://cafefiles.naver.net/MjAxNzA4MDdfOCAg/MDAxNTAyMTE3MDg0MTI1.IWJYc1vg1mLtBVE0uB9qOCM3P5Lnm9i2qKnbbwHoUukg.zE9P69X2q0EK7tPDnxUy56KG28xa5DQwZTJNMKklgDEg.PNG.altmxjqkr1478/235.png">

								</div>

								<div class="col-md-10">
									<div align="left">
										<h2>
											<a href="/board/boardDetail/${vo.bidx}">${vo.title}</a>
										</h2>
									</div>
									<div align="center">
										<h4>
											<a href="/board/boardDetail/${vo.bidx}">${vo.contents}</a>
										</h4>
									</div>

									<div class="container-fluid" align="right">
										<div class="row">

											<div class="col-sm-2">
												<span class="glyphicon glyphicon-user" aria-hidden="true"></span>${ vo.userid }</div>
											<div class="col-sm-3">
												<span class="glyphicon glyphicon-time" aria-hidden="true"></span>${ vo.writedate }</div>
											<div class="col-sm-1">
												<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>${ vo.category }</div>
											<div class="col-sm-1">
												<span class="glyphicon glyphicon-eye-open"
													aria-hidden="true"></span>${ vo.hitcnt }</div>
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
					</div>
				</div>
				<div class="col-md-3">
					<div>
						<c:import url="/board/hottagList"></c:import>
					</div>
				</div>
			</div>
		</div>
	</div>





</body>

</html>
