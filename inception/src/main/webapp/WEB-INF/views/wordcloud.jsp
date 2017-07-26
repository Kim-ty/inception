<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="../../resources/jqcloud/jqcloud.css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
<script type="text/javascript"
	src="../../resources/jqcloud/jqcloud-1.0.4.js"></script>

<script type="text/javascript">
      var words= [
				<c:forEach var="tags" items="${tags}">
          {text: "${tags.hashtag }", weight: "${tags.weight}", link: "../list?&detail=${tags.hashtag }"},
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


	<a href="./show">목록보기</a>
	<br> ${searchWord }
	<br>

	<div id="wordcloud" align="center"></div>



</body>
</html>