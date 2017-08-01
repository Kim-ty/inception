<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="../../resources/masonry/css/default.css" />
<link rel="stylesheet" type="text/css"
	href="../../resources/masonry/css/component.css" />
<script src="../../resources/masonry/js/modernizr.custom.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
	background-color: AntiqueWhite;
}
</style>
<body>

	<a href="./list">카테고리 보러가기</a>
	<br>

	<br>Tensor Result = ${search }
	<br> User's Curiosity = ${detail }
	<br> ==========================================
	<br>
	<c:forEach var="shop" items="${shop}">
		<a
			href="http://deal.11st.co.kr/product/SellerProductDetail.tmall?method=getSellerProductDetail&prdNo=${shop.code }&trTypeCd=21&trCtgrNo=585021&lCtgrNo=1001445&mCtgrNo=1002980"
			target="_blank"> <img src=${shop.imageURL } alt="no img"
			style="width: auto; height: 250px">
		</a>
	</c:forEach>
	<br> ==========================================
	<br>
	<c:choose>
		<c:when test="${not  empty list}">

			<div class="container">
				<ul class="grid effect-2" id="grid">
					<c:forEach var="list" items="${list}">
						<%-- 	<div class="w3-row w3-padding-16">
					<br> title : ${list.title }<br> <br> url :
					${list.url } <br>
				</div> --%>

						<c:forEach var="image" items="${list.imageURL}">
							<li><a href="${list.url }" target="_blank"><img
									src="${image.url }" alt="${image.index }"></a></li>
						</c:forEach>
						<script src="../../resources/masonry/js/masonry.pkgd.min.js"></script>
						<script src="../../resources/masonry/js/imagesloaded.js"></script>
						<script src="../../resources/masonry/js/classie.js"></script>
						<script src="../../resources/masonry/js/AnimOnScroll.js"></script>
						<script>
					new AnimOnScroll(document.getElementById('grid'), {
						minDuration : 0.4,
						maxDuration : 0.7,
						viewportFactor : 0.2
					});
				</script>

					</c:forEach>
				</ul>
			</div>
		</c:when>
		<c:otherwise>
			<p>No INFOMATION AVAILABLE</p>
		</c:otherwise>
	</c:choose>

</body>
</html>
