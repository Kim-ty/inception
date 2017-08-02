<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
	background-position: center;
	background-size: cover;
	background-image: url("/w3images/mac.jpg");
	min-height: 100%;
}

.w3-bar .w3-button {
	padding: 16px;
}
</style>
<body>

	<jsp:include page="header.jsp" flush="false" />

	<!-- Promo Section "Statistics" -->
	<div class="w3-container w3-row w3-center w3-blue-gray w3-padding-16">
		<div>
			<h1>
				<a href="/profile/${profile.userid}">${profile.userid}</a>
			</h1>
			<a href="/profile/${profile.userid}/followlist">${profile.followCount}
				follow</a> <a href="/profile/${profile.userid}/followerlist">${profile.followerCount}
				follower</a>
		</div>
	</div>

	<div>
		<a href="/profile/${profile.userid}">board</a> <a
			href="/profile/${profile.userid}/reply">reply</a> <a
			href="/profile/${profile.userid}/scrap">scrap</a>
	</div>

	<!-- Skills Section -->
	<div class="w3-container w3-light-grey w3-padding-64">
		<div class="w3-row-padding">
			<c:forEach var="vo" items="${profileBoard}">


				<div>
					<h3><a href="/board/boardDetail/${vo.bidx}">${ vo.title }</a></h3>
					${vo.contents} <br> 
					written by <a href="/profile/${vo.userid}">${ vo.userid }</a>
					${ vo.writedate } ${ vo.category } 조회수.${ vo.hitcnt } 좋아요.${ vo.gcnt } 
					나빠요.${vo.bcnt } 스크랩.${ vo.scrapecnt } 댓글수.${ vo.rpcnt }
					<br>=========================================
				</div>
			</c:forEach>
		</div>
	</div>


</body>
</html>
