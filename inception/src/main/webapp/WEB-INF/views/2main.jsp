<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<title>inception</title>

</head>
<body>
	<!-- CDNlib -->
	<jsp:include page="CDNLIB.jsp" flush="false" />

	<div id="container">

		<!-- header -->
		<div id="row">
			<div class="col-md-12">
				<jsp:include page="2header.jsp" flush="false" />
			</div>
		</div>
		<!-- category -->
		<div id="row">
			<div class="col-md-12" align="center"></div>
		</div>
		<!-- body -->
		<div id="row">

			<div class="col-md-12" style="">
				<jsp:include page="2search.jsp" flush="false" />
			</div>
		</div>
	</div>
</body>
</html>