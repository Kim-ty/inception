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


</head>

<body>





	<div class="container-fluid">
		<div id="row">
			<div class="col-md-12">
				<jsp:include page="2header.jsp" flush="false" />
			</div>
		</div>




		<div>
			<%-- <c:import url="/category"></c:import> --%>

			<div class="row">
				<div class="col-md-9">
					<div id="boardlistinfi">
						<a href="/board/write">Write</a>
						<c:forEach var="vo" items="${boardList}" end="10">


							<div id="row">
								<div class="col-md-10">
									<div class="media">
										<!-- photo -->
										<div class="media-left media-middle">
											<a href=""/board/boardDetail/${vo.bidx}">${vo.thumbnail}
												<img class="media-object" src="" alt="1234">
											</a>
										</div>
										<!-- acticle -->
										<div class="media-body">
											<h4 class="media-heading">Middle aligned media</h4>
											<a href="/board/boardDetail/${vo.bidx}"> <c:choose>
													<c:when test="${not empty sessionScope.loginInfo}">
												${vo.title}
											</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
											</a>
										</div>
									</div>
								</div>
							</div>


							<div class="row">
								<div class="col-md-10">
									<div align="left"></div>
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
						<div id="moreview">더보기</div>
					</div>
				</div>
				<div class="col-md-3">
					<div>
			<%-- 			<c:import url="/board/hottagList"></c:import> --%>
					</div>
				</div>
			</div>
		</div>









	</div>
</body>

</html>
