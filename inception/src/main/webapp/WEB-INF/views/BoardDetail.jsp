<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<<<<<<< HEAD
<!-- 부트스트랩 -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<script type="text/javascript">

	function ReplyView() {
		if ($(document).find("#replymore").html() == "댓글보기") {
			reply.style.visibility = "visible";
			$(document).find("#replymore").html("댓글숨기기");
		} else {
			$("#replycontents").empty();
			$(document).find("#replymore").html("댓글보기");
			$("reply").append("<div id=replycontents></div>");
		}
	}

	function goodchk(loginID,badList){
		$.each(Listarr,function(key,value)){
				if(loginID==value.gooder){
					return 1;					
				}
		}
		return 2;
	}
	
	function badchk(loginID,badList){
		$.each(Listarr,function(key,value)){
				if(loginID==value.bader){
					return 1;					
				}
		}
		return 2;
	}

	function scrapechk(loginID,scrapeList){
		$.each(Listarr,function(key,value)){
				if(loginID==value.scraper){
					return 1;					
				}
		}
		return 2;
	}
	
	
	
	
	function taglink(votag) {
		alert(votag);
		var tagArray = (votag).split(',');
		for ( var i in tagArray) {
			$("#tags").append(
					"<th><a href='/board/boardList/tag"+tagArray[i]+"'>"
							+ tagArray[i] + "</a></th>");
		}
	}

=======
<<<<<<< HEAD
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
=======
>>>>>>> 524a1f4f10b1edee45a1897ddb37527db90f02fb

<!-- 부트스트랩 -->
<link
<<<<<<< HEAD
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var targetbidx = $(document).find("#bidx").html();

=======
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39
	$(document)
			.ready(
					function() {

						var targetbidx = $("#bidx").html();

						$('.act')
								.click(
										function() {
											var urlchose = $(this).attr("id");

											if ($(this).html().indexOf("취소") == -1) {
												if ($("#good").html().indexOf(
														"취소") > -1
														|| $("#bad").html()
																.indexOf("취소") > -1) {
													$
															.ajax({
																url : "/board/updategood",
																type : "post",
																dataType : "json",
																data : {
																	bidx : targetbidx,
																	g_b_count : $(
																			this)
																			.html()
																},
																success : function(
																		data) {
																	if ($(this).html == "좋아요") {
																		$(
																				"#good")
																				.html(
																						"좋아요취소");
																		$(
																				"#bad")
																				.html(
																						"싫어요");
																	} else {
																		$(
																				"#good")
																				.html(
																						"좋아요");
																		$(
																				"#bad")
																				.html(
																						"싫어요취소");
																	}

																	$(
																			"#goodList")
																			.html(
																					data.goodcount);
																	$(
																			"#badList")
																			.html(
																					data.badcount);

																}
															});
												} else {
													$
															.ajax({
																url : "/board/"
																		+ urlchose,
																type : "post",
																dataType : "json",
																data : {
																	bidx : targetbidx
																},
																success : function(
																		data) {
																	if (urlchose == "good") {
																		$(
																				"#good")
																				.html(
																						"좋아요취소");
																		$(
																				"#goodList")
																				.html(
																						data);
																	} else {
																		$(
																				"#bad")
																				.html(
																						"싫어요취소");
																		$(
																				"#badList")
																				.html(
																						data);
																	}
																}
															});
												}

											} else {
												$
														.ajax({
															url : "/board/nogood",
															type : "post",
															dataType : "json",
															data : {
																bidx : targetbidx
															},
															success : function(
																	data) {
																$("#good")
																		.html(
																				"좋아요");
																$("#bad").html(
																		"싫어요");

																$("#goodList")
																		.html(
																				data.goodcount);
																$("#badList")
																		.html(
																				data.badcount);
															}
														});
											}
										});

						$('.actscrap').click(
								function() {
									var urlchose = $(this).attr("id");
									$.ajax({
										url : "/board/" + urlchose,
										type : "post",
										dataType : "json",
										data : {
											bidx : targetbidx,
											scrape : $(this).html()
										},
										success : function(data) {
											if ($("#scrape").html().indexOf(
													"취소") == -1) {
												$("#scrape").html("스크랩취소");
											} else {
												$("#scrape").html("스크랩");
											}
											$("#scrapeList").html(data);
										}
									});

								});


						
						
>>>>>>> 524a1f4f10b1edee45a1897ddb37527db90f02fb
						$('#replymore')
								.click(
										function() {
											$
													.ajax({
														url : "/board/replyList",
														type : "POST",
														dataType : "json",
														data : {
															bidx : $(document)
																	.find(
																			"#bidx")
																	.html()
														},
													success : function(replyVO){														
													$.each(replyVO,function(key,value)
															{
																var sibal = " ";
																if (value.level > 1) {
																	for (var i = 0; i <= value.level; i++) {
																		sibal += "&nbsp;&nbsp;";
																	}
																}
															var row = $("<p>"
																	+ "<span>"
																	+ sibal
																	+ "<span>"
																	+ value.userid
																	+ "&nbsp"
																	+ value.writedate
																	+ "<br>"
																	+ "<span>"
																	+ sibal
																	+ "<span>"
																	+ value.contents
																	+ "<br>"
																	+ "<span>"
																	+ sibal
																	+ "<span>"
																	+ "<a href='javascript:Replyinsert()'>답글달기</a></p>");
															$("#replycontents").append(row);
														});
// 														success : function(replyVO) {
// 															$.each(replyVO,function(key,value) {
// 																					var sibal = " ";
// 																					if (value.level > 1) {
// 																						for (var i = 0; i <= value.level; i++) {
// 																							sibal += "&nbsp;&nbsp;";
// 																						}
// 																					}
// 																					var row =
// 																						$("<p>"+ "<span>"+ sibal+ "</span><span>"+ value.userid+ "&nbsp"+ value.writedate+ "</span><br>"
// 																							+ "<span>"+ sibal+ "</span><span>"+ value.contents+ "</span><br>"
// 																							+ "<span>"+ sibal+ "</span><span>"+ "<a href='javascript:Replyinsert()'>답글달기</a></span></p>");
// 																					$("#replycontents").append(row);
// 																			});
															ReplyView();
														}
													});
										});

					});

	function ReplyView() {
		if ($(document).find("#replymore").html() == "댓글보기") {
			$("#reply").style.visibility = "visible";
			$(document).find("#replymore").html("댓글숨기기");
		} else {
			$("#replycontents").empty();
			$(document).find("#replymore").html("댓글보기");
			$("#reply").append("<div id=replycontents></div>");
		}
	}

<<<<<<< HEAD
	
	
	
	
	function taglink(voztag) {
=======
	function taglink(votag) {
>>>>>>> 9a81fcf23bf6219a9048b7bdd69401e3d6c9b49b
		alert(votag);
		var tagArray = (votag).split(',');
		for ( var i in tagArray) {
			$("#tags").append(
					"<th><a href='/board/boardList/tag"+tagArray[i]+"'>"
							+ tagArray[i] + "</a></th>");
		}
	}
	
</script>
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======

>>>>>>> dbb2cfb5b214f5bbbdff144640dceb221f06e0d4
>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39
<style>
p img {
	resize: both; /* 이미지 최대 사이즈에 적용 */
	float: center; /* 가운데 정렬 */
	max-width: 100%; /* 넓이를 지정 */
	height: auto; /* 높이를 지정 */
	margin: 5px 0; /* 여백을 적용 4가지 조건이 가능 위쪽, 오른쪽, 아래쪽, 왼쪽 순서 */
}
</style>

<title>boardDetail</title>
</head>
<body>

<<<<<<< HEAD
	<div class="container-fluid">

		<jsp:include page="header.jsp" flush="false" />

		<div class="row-fluid">

			<div>
				<c:set var="vo" value="${boardDetail}" />
				<!-- Blog entries -->
				<div>
					<!-- Blog entry -->
					<div class="w3-card-4 w3-margin w3-white">

						<div class="w3-container-fluid">
							<h3>
								<span id="bidx">${vo.bidx}</span> <b>${vo.title}</b>
							</h3>
							<h5>
								<a href="/profile/${vo.userid}">${ vo.userid }</a> <span
									class="w3-opacity">${ vo.writedate }</span> <span
									class="w3-opacity"><a
									href="board/boardList/${vo.category}">${ vo.category }</a></span> <span
									class="w3-opacity">조회수.${ vo.hitcount }</span> <span
									class="w3-opacity"><a id="good">좋아요.</a></span><span
									class="w3-opacity"><a id="goodLst">${fn:length(vo.gooder)}</a></span>
								<span class="w3-opacity"><a id="bad">나빠요.</a></span><span
									class="w3-opacity"><a id="badLst">${fn:length(vo.bader)}</a></span><span
									class="w3-opacity"><a id="scrape">스크랩.</a></span><span
									class="w3-opacity"><a id="scrapeLst">${fn:length(vo.scraper)}</a></span>
							</h5>

						</div>

						<div class="w3-container">
							<p>${vo.contents}.</p>

						</div>
						<div class="w3-card-2 w3-margin">
							<div class="w3-container w3-padding">
								<h4>Tags</h4>
							</div>
							<div class="w3-container w3-white">
								<p>
									<c:forEach var="tag" items="${vo.tag}">
										<span class="w3-tag w3-light-grey w3-small w3-margin-bottom">
											<a href="/board/boardList/tag${tag.tag}">${tag.tag}</a>
										</span>
									</c:forEach>
								</p>
							</div>
						</div>

						<div class="w3-row">
							<div class="w3-col m8 s12">
								<p>
									<button class="w3-button w3-padding-large w3-white w3-border">
										<b><a id="replymore">댓글보기</a></b>
									</button>
								</p>
							</div>
							<div class="w3-col m4 w3-hide-small">
								<p>
									<span class="w3-padding-large w3-right"><b>Comments</b>
										<span class="w3-tag">${ vo.replycount }</span></span>
								</p>
							</div>
						</div>


						<div id="reply" class="w3-container w3-white"
							style="visibility: hidden;">
							<div id=replycontents></div>
						</div>

					</div>
				</div>
=======
<<<<<<< HEAD
	<div class="container-fluid">
		<div>
			<jsp:include page="header.jsp" flush="false" />
			<div class="row-fluid">
				<div>
					<c:set var="vo" value="${boardDetail}" />

					<div id="boarddetailcontents" style="border: solid black 1px;">
						<div class="boarddetailcontents_header">
							<div align="right">
								<a href="/profile/${vo.userid}">${ vo.userid }</a> <span>${ vo.writedate }</span>
								<span><a href="board/boardList/${vo.category}">${ vo.category }</a></span>
								<span>조회수.${ vo.hitcount }</span>
							</div>
							<div align="left">
								<span id="bidx">${vo.bidx}</span> <b><span>${vo.title}</span></b>
							</div>
						</div>
						<div></div>


						<div class="boarddetailcontents_body">
							<div>
								<span>${vo.contents}.</span>
							</div>
						</div>
						<div class="boarddetailcontents_footer1">
							<div align="right">
								<span><a id="good">좋아요.</a></span> <span><a id="goodLst">${fn:length(vo.gooder)}</a></span>
								<span><a id="bad">나빠요.</a></span> <span><a id="badLst">${fn:length(vo.bader)}</a></span>
								<span><a id="scrape">스크랩.</a></span> <span><a
									id="scrapeLst">${fn:length(vo.scraper)}</a></span>
							</div>
						</div>
						<div class="boarddetailcontents_tags">
							<div>
								<h4>Tags</h4>
								<div>
									<c:forEach var="tag" items="${vo.tag}">
										<span> <a href="/board/boardList/tag${tag.tag}">${tag.tag}</a>
										</span>
									</c:forEach>
								</div>
							</div>
						</div>

						<div class="boarddetailcontents_reply">
							<div>
								<span><b> <a id="replymore">댓글보기</a></b></span> <b>Comments</b>
								<span>${ vo.replycount }</span>
							</div>
						</div>

						<div id="reply" style="visibility: hidden;">
							<div id=replycontents></div>
						</div>
					</div>
=======
	<jsp:include page="header.jsp" flush="false" />
	<c:set var="vo" value="${boardDetail}" />
	<!-- Blog entries -->
	<div>
		<!-- Blog entry -->
		<div class="w3-card-4 w3-margin w3-white">

			<div class="w3-container-fluid">
				<h3>
					<span id="bidx">${vo.bidx}</span> <b>${vo.title}</b>
				</h3>
				<h5>
					<a href="/profile/${vo.userid}">${ vo.userid }</a> <span
						class="w3-opacity">${ vo.writedate }</span> <span
						class="w3-opacity"><a href="board/boardList/${vo.category}">${ vo.category }</a></span>
					<span class="w3-opacity">조회수.${ vo.hitcount }</span> <span
						class="w3-opacity"><a id="good" class="act">${vo.good}</a></span><span
						class="w3-opacity"><a id="goodList" class="list">${fn:length(vo.gooder)}</a></span>
					<span class="w3-opacity"><a id="bad" class="act">${vo.bad}</a></span><span
						class="w3-opacity"><a id="badList" class="list">${fn:length(vo.bader)}</a></span><span
						class="w3-opacity"><a id="scrape" class="actscrap">${vo.scrape}</a></span><span
						class="w3-opacity"><a id="scrapeList" class="list">${fn:length(vo.scraper)}</a></span>
				</h5>

>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39
			</div>
		</div>
	</div>



<<<<<<< HEAD



	<div id="myModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body"></div>
=======
			<div class="w3-row">
				<div class="w3-col m8 s12">
					<p>
						<button class="w3-button w3-padding-large w3-white w3-border">
							<b><a id="replymore">댓글보기</a></b>
						</button>
					</p>
				</div>
				<div class="w3-col m4 w3-hide-small">
					<p>
						<span class="w3-padding-large w3-right"><b>Comments</b> <span
							class="w3-tag">${ vo.replycount }</span></span>
					</p>
>>>>>>> 524a1f4f10b1edee45a1897ddb37527db90f02fb
				</div>
>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39
			</div>
		</div>
	</div>



	<!— Button trigger modal —>
	<button type="button" data-toggle="modal" data-target="#myModal">Launch
		demo modal</button>

<<<<<<< HEAD
	<!— Modal —>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body"><jsp:include page="replyinsert.jsp" /></div>

			</div>
		</div>
	</div>





=======


	<script type="text/javascript">
		function ReplyView() {
			if ($(document).find("#replymore").html() == "댓글보기") {
				reply.style.visibility = "visible";
				$(document).find("#replymore").html("댓글숨기기");
			} else {
				$("#replycontents").empty();
				$(document).find("#replymore").html("댓글보기");
				$("reply").append("<div id=replycontents></div>");
			}
		}

		function taglink(votag) {
			alert(votag);
			var tagArray = (votag).split(',');
			for ( var i in tagArray) {
				$("#tags").append(
						"<th><a href='/board/boardList/tag"+tagArray[i]+"'>"
								+ tagArray[i] + "</a></th>");

			}
		}
	</script>

>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39
	<script>
		function Replyinsert() {
			modal.style.display = "block";
		}
	</script>

<<<<<<< HEAD
	<!— jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) —>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!— 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 —>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
=======

</body>
</html>

>>>>>>> 0d2343a66dfcb881513d2e724f7a88be803ffe39

</body>
</html>