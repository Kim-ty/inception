<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<title>Main</title>


</head>

<body>

	<button type="button" class="btn btn-primary">Primary</button>

	<<<<<<< HEAD
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		<ul class="nav navbar-nav">
			<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
			<li class="hidden"><a href="#page-top"></a></li>
			<li><a class="page-scroll" href="#Searching">Searching</a></li>
			<li><a class="page-scroll" href="#download">Download</a></li>
			<li><a class="page-scroll" href="#boards">boards</a></li>
			<li><c:choose>
					<c:when test="${not empty sessionScope.loginInfo}">
						<span>welcome ${sessionScope.loginInfo.userid} !! </span>
						<a href="/profile/${sessionScope.loginInfo.userid}/">profile</a>
						<a href="/user/logout">Log out</a>
					</c:when>
					<c:otherwise>
						<a href="/user/login"> Login </a>
					</c:otherwise>
				</c:choose></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
	<div class="container">
		<div class="page-header" style="border: solid 1px;">
			<jsp:include page="header.jsp" flush="false" />
		</div>
		<div class="col-xs-9" style="border: solid 1px;">
			<jsp:include page="searching.jsp" flush="false" />
		</div>
		<div class="col-xs-3" style="border: solid 1px;">
			<c:import url="/board/hottagList"></c:import>
		</div>

	</div>



</body>

</html>
