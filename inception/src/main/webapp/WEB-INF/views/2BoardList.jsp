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


</head>

<body>
	<div class="col-md-12">
		<div class="media">
			<!-- photo -->
			<div class="media-left media-middle">
				<a href="#"> <img class="media-object"
					src="https://search.pstatic.net/common?type=o&size=120x150&quality=95&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2Fportrait%2F201606%2F20160613150203917.jpg"
					alt="1234">
				</a>
			</div>
			<!-- acticle -->
			<div class="media-body">
				<h4 class="media-heading">Middle aligned media</h4>
				Explore Wikipedia's Contents Shortcuts: WP:START WP:EXPLORE Contents
				[hide] 1 Curated article collections 2 Reference collections 3
				Special format collections 4 Collections of articles 5 Collections
				of articles by quality or popularity There are two ways to look
				things up in Wikipedia: by searching or by browsing. If you know the
				name of an article for which you are looking, simply type it into
				Wikipedia's search box. If you would like to look around the
				encyclopedia to see what is on it, use Wikipedia's Contents pages.
				Lists and indices are examples of contents for a published work, and
				Wikipedia has many of each, including a complete alphabetical index
				and indices by category. Links to all of Wikipedia's main contents
				pages are presented below, and they in turn link to the more
				specific pages. Curated article collections Overview articles
				Overview articles summarize in prose a broad topic like biology, and
				also have illustrations and links to subtopics like cell biology,
				biographies like Carl Linnaeus, and other related articles like
				Human Genome Project. Portal:Contents/Overviews lists overview
				articles from covered areas of knowledge in a single page.
			</div>
		</div>

	</div>





</body>

</html>
