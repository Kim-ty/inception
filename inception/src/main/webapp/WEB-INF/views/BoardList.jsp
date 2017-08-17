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

<title></title>





</head>

<body>

	<div>

		<div style="border: solid 1px;">
			<c:import url="/category"></c:import>
		</div>

		<div class="col-xs-9" style="border: solid 1px; height: inherit;">
			<ul>
				<c:forEach var="vo" items="${boardList}">
					<li><a href="/board/boardDetail/${vo.bidx}">${vo.thumbnail}</a>
						<div>
							<h3>
								<a href="/board/boardDetail/${vo.bidx}"> ${vo.title}</a>
							</h3>
						</div>
						<div>
							<a href="/board/boardDetail/${vo.bidx}">${vo.contents}</a>
						</div>
						<div>
							<span>${ vo.category }</span> | <span>${ vo.hitcnt }></span> | <span>${ vo.gcnt }</span>
							| <span>${ vo.bcnt }</span> | <span>${ vo.userid }</span> | <span>${ vo.writedate }</span>
							| <span>${ vo.scrapecnt }</span> | <span>${ vo.rpcnt }</span>
						</div></li>
				</c:forEach>
			</ul>
		</div>

		<div class="col-xs-3" style="border: solid 1px;">
			<c:import url="/board/hottagList"></c:import>
		</div>

	</div>

	<script type="text/javascript">
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







</body>

</html>
