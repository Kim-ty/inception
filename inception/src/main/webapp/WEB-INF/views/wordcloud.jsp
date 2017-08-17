<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->


<title>Insert title here</title>


<link rel="stylesheet" type="text/css"
	href="../../resources/jqcloud/jqcloud.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
<script type="text/javascript"
	src="../../resources/jqcloud/jqcloud-1.0.4.js"></script>

<script type="text/javascript">
      var words= [
				<c:forEach var="tags" items="${tags}">
          {text: "${tags.hashtag }", weight: "${tags.weight}", link: "./hashtag?&detail=${tags.hashtag }"},
				</c:forEach>
          ];
      $(function() {
        $("#wordcloud").jQCloud(words)
      });
    </script>
</head>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%;
	line-height: 1.8;
	background-color: #FAFAD2;
}

#wordcloud {
	width: 550px;
	height: 350px;
	margin: auto;
	position: absolute;
	left: 0;
	right: 0;
	top: 0;  /* delete to center horizon only */
	bottom: 0 ;
}
</style>
<body>


	<a href="./list">목록보기</a>
	<br> ${searchWord }
	<br>

	<div id="wordcloud" align="center"></div>



</body>
</html>