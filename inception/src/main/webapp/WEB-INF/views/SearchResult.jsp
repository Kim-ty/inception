<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="../../resources/jqcloud/jqcloud.css" />
<script
	src="/resources/startbootstrap-grayscale-gh-pages/vendor/jquery/jquery.js"></script>

<script type="text/javascript">
	function cloud(tagList) {
		var words = new Array;
		$.each(tagList, function(key, value) {
			words.push({
				text : value.hashtag,
				weight : value.weight,
				link : "/search/hashtag?&detail=" + value.hashtag
			});
		});
		$("#wordcloud").empty();
		$("#wordcloud").jQCloud(words);

	}

	$(document).ready(function() {
		$('.category').click(

		function() {
			var targeturl = "/search/taglist/" + $(this).attr("id");
			$.ajax({
				url : targeturl,
				type : "POST",
				dataType : "json",
				success : function(tagList) {
					cloud(tagList);
				}
			});
		});
	});
</script>


<title>SearchResult</title>
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

#wordcloud {
	width: 550px;
	height: 350px;
	margin: auto;
	position: absolute;
	left: 0;
	right: 0;
	top: 0; /* delete to center horizon only */
	bottom: 0;
}
</style>

<body>

	<jsp:include page="header.jsp" flush="false" />

	이미지 분석 결과값
	</br>
	<div id="categoryList">
		<button>
			<a id="${Rank1}" class="category">${Rank1 }</a>
		</button>
		<br>
		<button>
			<a id="${Rank2}" class="category">${Rank2 }</a>
		</button>
		<br>
		<button>
			<a id="${Rank3}" class="category">${Rank3 }</a>
		</button>
		<br>
		<button>
			<a id="${Rank4}" class="category">${Rank4 }</a>
		</button>
		<br>
		<button>
			<a id="${Rank5}" class="category">${Rank5 }</a>
		</button>
		<br>
	</div>

	<div id="wordcloud" align="center"></div>

	<script type="text/javascript"
		src="../../resources/jqcloud/jqcloud-1.0.4.js"></script>
</body>
</html>