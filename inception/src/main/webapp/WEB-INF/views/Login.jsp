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

<title>inception_Login</title>

</head>

<body>

	<!-- CDNlib -->
	<jsp:include page="CDNLIB.jsp" flush="false" />

	<div id="container-fluid">
		<div class="row">
			<div style="background-color: #ec2652;">
				<jsp:include page="2sidebar.jsp" flush="false" />
			</div>
		</div>

		<!-- login -->
		<div id="row">
			<div class="col-md-12" align="center"><jsp:include
					page="loginform.jsp" flush="false" /></div>
		</div>
		<div id="row">
			<div class="col-md-12" align="center"><jsp:include
					page="loginbackground.jsp" flush="false" /></div>
		</div>
	</div>

</body>
</html>