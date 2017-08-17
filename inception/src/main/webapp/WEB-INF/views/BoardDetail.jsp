<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<!-- jQuery -->
<script
   src="resources/startbootstrap-grayscale-gh-pages/vendor/jquery/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script   src="resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Bootstrap Core CSS -->
<link
   href="resources/startbootstrap-grayscale-gh-pages/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Custom Fonts -->
<link
   href="resources/startbootstrap-grayscale-gh-pages/vendor/font-awesome/css/font-awesome.min.css"
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

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
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
                                                   if ($(
                                                         "#good")
                                                         .html() == "좋아요") {
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
                                                            var row = $("<div id='"+value.ridx+"repldiv'>"
                                                                  + "<span>"
                                                                  + sibal
                                                                  + "<span><a href='/profile/profileboard'>"
                                                                  + value.userid
                                                                  + "</a>&nbsp"
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
                                                                  + "<a href='javascript:Replyinsert("
                                                                  + value.ridx
                                                                  + ","
                                                                  + $(
                                                                        "#bidx")
                                                                        .html()
                                                                  + ")'>답글달기</a></div>");
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

   function commentSubmit() {

      var params = $("#commentform").serialize();

      $.ajax({
         url : "/board/commentInsert",
         type : "POST",
         dataType : "json",
         data : params,
         success : function(replyVO) {
            $("#replycontents").empty();
            $("#reply").append("<div id=replycontents></div>");
            $.each(replyVO, function(key, value) {
               var sibal = " ";
               if (value.level > 1) {
                  for (var i = 0; i <= value.level; i++) {
                     sibal += "&nbsp;&nbsp;";
                  }
               }
               var row = $("<div id='"+value.ridx+"repldiv'>" + "<span>"
                     + sibal + "<span><a href='/profile/profileboard'>"
                     + value.userid + "</a>&nbsp" + value.writedate
                     + "<br>" + "<span>" + sibal + "<span>"
                     + value.contents + "<br>" + "<span>" + sibal
                     + "<span>" + "<a href='javascript:Replyinsert("
                     + value.ridx + "," + $("#bidx").html()
                     + ")'>답글달기</a></div>");
               $("#replycontents").append(row);
               $("#comment").val("");
               $("#replycount").html(replyVO.length);
            });
         }
      });
   }

   function formSubmit(ididx) {
      var useid = "#" + ididx + "repl";
      var params = $(useid).serialize();

      $.ajax({
         url : "/board/commentInsert",
         type : "POST",
         dataType : "json",
         data : params,
         success : function(replyVO) {
            $("#replycontents").empty();
            $("#reply").append("<div id=replycontents></div>");
            $.each(replyVO, function(key, value) {
               var sibal = " ";
               if (value.level > 1) {
                  for (var i = 0; i <= value.level; i++) {
                     sibal += "&nbsp;&nbsp;";
                  }
               }
               var row = $("<div id='"+value.ridx+"repldiv'><p>"
                     + "<span>" + sibal
                     + "<span><a href='/profile/profileboard'>"
                     + value.userid + "</a>&nbsp" + value.writedate
                     + "<br>" + "<span>" + sibal + "<span>"
                     + value.contents + "<br>" + "<span>" + sibal
                     + "<span>" + "<a href='javascript:Replyinsert("
                     + value.ridx + "," + $("#bidx").html()
                     + ")'>답글달기</a></p><div>");
               $("#replycontents").append(row);
               $("#comment").val("");
               $("#replycount").html(replyVO.length);
            });
            $(ididx).remove();
         }

      });
   }

   function Replyinsert(ridx, bidx) {
      var appn = "#" + ridx + "repldiv";
      var row = $("<form name='repl' id='"+ridx+"repl'><input name = 'comment' type='text'></input><input type ='hidden' name='target' value='"+ridx+" '><input type = 'hidden' name='bidx' value='"+bidx+"'><input type='button' id='"
            + ridx
            + "_btn' value='submit' onclick='formSubmit("
            + ridx
            + ")'></form>");
      $(appn).append(row);
   }

   function ReplyView() {
      if ($(document).find("#replymore").html() == "댓글보기") {
         reply.style.visibility = "visible";
         $(document).find("#replymore").html("댓글숨기기");
      } else {
         $("#replycontents").empty();
         $(document).find("#replymore").html("댓글보기");
         $("reply").append("<div id=replycontents></div>");
         reply.style.visibility = "hidden";
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
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> f4877ae0d50f3c9189f9d3bbc89e89f3006af597
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
                        <span><a id="good" class="act">${vo.good}</a></span> <span><a
                           id="goodList">${fn:length(vo.gooder)}</a></span> <span><a
                           id="bad" class="act">${vo.bad}</a></span> <span><a id="badList">${fn:length(vo.bader)}</a></span>
                        <span><a id="scrape" class="actscrap">${vo.scrape}</a></span> <span><a
                           id="scrapeList">${fn:length(vo.scraper)}</a></span>
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
                        <span id="replycount">${ vo.replycount }</span>
                     </div>
                  </div>

                  <div id="reply" style="visibility: hidden;">
                     <div>
                        <form name='commentform' id='commentform'>
                           <input type='text' name='comment'></input> <input type='hidden'
                              name='target' value=''> <input type='hidden'
                              name='bidx' value="${vo.bidx}"> <input type='button'
                              value='submit' onclick='commentSubmit()'>
                        </form>
                     </div>
                  </div>
                  <div id=replycontents></div>
               </div>
            </div>
         </div>
      </div>
   </div>
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
	<div class="container">
=======
<<<<<<< HEAD

=======
>>>>>>> dbeed1771260b45fd8f413404830915a059d4949
>>>>>>> 7a4cbd1c5cc6a35c9b38fbbcb84c7802d8227bcc
>>>>>>> 796caa606ed576cc7de24e8c7b9a43f8e6adbf10
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
								<span><a id="good" class="act">${vo.good}</a></span> <span><a
									id="goodList">${fn:length(vo.gooder)}</a></span> <span><a
									id="bad" class="act">${vo.bad}</a></span> <span><a id="badList">${fn:length(vo.bader)}</a></span>
								<span><a id="scrape" class="actscrap">${vo.scrape}</a></span> <span><a
									id="scrapeList">${fn:length(vo.scraper)}</a></span>
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
								<span id="replycount">${ vo.replycount }</span>
							</div>
						</div>

						<div id="reply" style="visibility: hidden;">
							<div>
								<form name='commentform' id='commentform'>
									<input type='text' name='comment'></input> <input type='hidden'
										name='target' value=''> <input type='hidden'
										name='bidx' value="${vo.bidx}"> <input type='button'
										value='submit' onclick='commentSubmit()'>
								</form>
							</div>
						</div>
						<div id=replycontents></div>
					</div>
				</div>
			</div>
		</div>
	</div>
>>>>>>> c48c4ae23e5d7ac53befbb966efa7608cddfa4ea
>>>>>>> f4877ae0d50f3c9189f9d3bbc89e89f3006af597
</body>
</html>
