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

<style>
div.container {
	width: 100%;
	border: 2px solid gray;
}

header, footer {
	padding: 1em;
	color: black;
	background-color: gray;
	clear: left;
	text-align: center;
}

nav {
	float: top;
	max-width: width;
	margin: 3em;
	padding: 1em;
	text-align: center;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul a {
	text-decoration: none;
}

article {
	margin-left: 170px;
	border-left: 1px solid gray;
	padding: 1em;
	overflow: hidden;
}
</style>
<title>Main</title>
</head>

<body>

	<div class="container">

		<header>


			<h1>Image Searching</h1>
			<p style="text-align: center;">
			<p style="text-align: left;">
				<a href="/"><img
					src="http://kinimage.naver.net/20170630_163/1498780202972xwE1E_GIF/3477def4c30cd39d708e90448a3db9a5.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /> <img
					src="http://kinimage.naver.net/20170412_168/1491991851891x1pH6_GIF/1491991849429.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /></a>
			</p>

			<p style="text-align: right;">
				<c:choose>
					<c:when test="${not empty sessionScope.loginInfo}">
					${sessionScope.loginInfo.userid}님 개반갑
						<a href="#"><input type="submit" name="Profile"
							value="Profile"></a>
          
          <a href="/user/logout"><input type="submit" name="Log out"
							value="Log out"></a>

					</c:when>
					<c:otherwise>
						<a href="/user/login"><input type="submit" name="LOGIN"
							value="LOGIN"></a>

					</c:otherwise>
				</c:choose>


			</p>


			</p>

			</p>

		</header>

		<nav>

			<div>
				<c:forEach var="vo" items="${categoryList }">
					<a href="/boardList/${vo.category }"><input type="submit"
						name="category1" value=${vo.category }></a>

				</c:forEach>
			</div>

		</nav>

		<article>
			<h1>검색이미지를 던지든 키워드를 입력하든</h1>


			<form>
				Searching : <input type="text" name="">
				<button type="submit" name="">search</button>
			</form>
			<form action="inception" method="post" enctype="multipart/form-data">
				이미지분석<input type = "file" name="uploadfile" required="required">
				<input type="submit" value="Search">
			</form>

		</article>

		<footer>Footer</footer>

	</div>

</body>

</html>
