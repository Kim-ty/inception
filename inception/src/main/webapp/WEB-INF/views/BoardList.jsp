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



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

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
/* The Modal (background) */
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

.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}
</style>
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


	<c:import url="/category"></c:import>


	<div class="w3-row-padding w3-center w3-margin-top">
		<div class="w3-threequarter">
			<div class="w3-card-2 w3-container">

				<c:forEach var="vo" items="${boardList}">
					<div class="row">
						<div class="col-md-2">
							<a href="/board/boardDetail/${vo.bidx}">${vo.thumbnail}</a>
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
									<div class="col-sm-2">${ vo.userid }</div>
									<div class="col-sm-3">${ vo.writedate }</div>
									<div class="col-sm-1">${ vo.category }</div>
									<div class="col-sm-1">${ vo.hitcnt }</div>
									<div class="col-sm-1">${ vo.gcnt }</div>
									<div class="col-sm-1">${ vo.bcnt }</div>
									<div class="col-sm-1">${ vo.scrapecnt }</div>
									<div class="col-sm-1">${ vo.rpcnt }</div>
								</div>
							</div>
						</div>
						<hr>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="w3-quarter w3-hide-small">
			<div class="w3-card-2 w3-container" style="min-height: 460px">

				<c:import url="/board/hottagList"></c:import>

			</div>
		</div>
	</div>

	<!-- 	<div id="modal-testNew" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="테스트정보 등록" aria-describedby="테스트 모달">
		<div class="modal-dialog modal-lg">
			<div class="modal-content"></div>
		</div>
	</div> -->







</body>

</html>
