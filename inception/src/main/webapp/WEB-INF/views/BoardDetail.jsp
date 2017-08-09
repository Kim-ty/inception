<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var targetbidx = $(document).find("#bidx").html();

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
														success : function(
																replyVO) {
															$
																	.each(
																			replyVO,
																			function(
																					key,
																					value) {
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
																				$(
																						"#replycontents")
																						.append(
																								row);
																			});
															ReplyView();
														}
													});
										});

					});
</script>

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
				</div>
			</div>
		</div>
	</div>






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

	<script>
		function Replyinsert() {
			modal.style.display = "block";
		}
	</script>


</body>
</html>


