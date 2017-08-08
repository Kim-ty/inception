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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">
<<<<<<< HEAD
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
<script type="text/javascript">
=======
	
<script>
>>>>>>> d75249796279c5b590e92ddb11c464439f4f4897
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

	$(document)
			.ready(
					function() {
						
						var targetbidx = $(document).find("#bidx").html();
						
						$('#good').click(function(){
<<<<<<< HEAD
		                     $.ajax({
		                        url : "/boad/good",
		                        type : "post",
		                        dataType : "JSON",
		                        data : {
		                           bidx : targetbidx
		                           },
		                        success : :function(){
		                           
		                        }
		                     });
		                  });
		                  
		                  $('#bad').click(function(){
		                     $.ajax({
		                        url : "/boad/bad",
		                        type : "post",
		                        dataType : "JSON",
		                        data : {
		                           bidx : targetbidx
		                           },
		                        success : :function(){
		                           
		                        }
		                     });
		                  });
		                  
		                   $('#scrape').click(function(){
		                     $.ajax({
		                        url : "/boad/scrape",
		                        type : "post",
		                        dataType : "JSON",
		                        data : {
		                           bidx : targetbidx
		                           },
		                        success : :function(){
		                           
		                        }
		                     });
		                  });
=======
							$.ajax({
								url : "/boad/good",
								type : "post",
								dataType : "JSON",
								data : {
									bidx : targetbidx},
								success : :function(){
									
								}
							});
						});
						
						$('#bad').click(function(){
							$.ajax({
								url : "/boad/bad",
								type : "post",
								dataType : "JSON",
								data : {
									bidx : targetbidx},
								success : :function(){
									
								}
							});
						});
						
						 $('#scrape').click(function(){
							$.ajax({
								url : "/boad/scrape",
								type : "post",
								dataType : "JSON",
								data : {
									bidx : targetbidx},
								success : :function(){
									
								}
							});
<<<<<<< HEAD
						});
=======
						}); */
>>>>>>> d75249796279c5b590e92ddb11c464439f4f4897
>>>>>>> 8270240721cc946034e2f0b9e4026ad89b93197c
						
						
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

	<jsp:include page="header.jsp" flush="false" />

	<c:set var="vo" value="${boardDetail}" />
	<!-- Blog entries -->
	<div>
		<!-- Blog entry -->
		<div class="w3-card-4 w3-margin w3-white">

			<div class="w3-container">
				<h3>
					<span id="bidx">${vo.bidx}</span> <b>${vo.title}</b>
				</h3>
				<h5>
					<a href="/profile/${vo.userid}">${ vo.userid }</a> <span
						class="w3-opacity">${ vo.writedate }</span> <span
						class="w3-opacity"><a href="board/boardList/${vo.category}">${ vo.category }</a></span> <span
						class="w3-opacity">조회수.${ vo.hitcount }</span> <span
						class="w3-opacity"><a id="good">좋아요.</a></span><span
						class="w3-opacity"><a id="goodLst">${fn:length(vo.gooder)}</a></span> <span
						class="w3-opacity"><a id="bad">나빠요.</a></span><span
						class="w3-opacity"><a id="badLst">${fn:length(vo.bader)}</a></span><span 
						class="w3-opacity"><a id="scrape">스크랩.</a></span><span
<<<<<<< HEAD
						class="w3-opacity"><a id="scrapeLst">${fn:length(vo.scraper)}</a></span>
=======
						class="w3-opacity"><a id="scrapeLst">${ vo.scrapecount }</a></span>
>>>>>>> d75249796279c5b590e92ddb11c464439f4f4897
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
						<span class="w3-padding-large w3-right"><b>Comments</b> <span
							class="w3-tag">${ vo.replycount }</span></span>
					</p>
				</div>
			</div>


			<div id="reply" class="w3-container w3-white"
				style="visibility: hidden;">
				<div id=replycontents></div>
			</div>

		</div>
	</div>





	<div id="myModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<jsp:include page="replyinsert.jsp" />
				</div>
			</div>
		</div>
	</div>

	<script>
		function Replyinsert() {
			modal.style.display = "block";
		}

		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

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

</body>
</html>


