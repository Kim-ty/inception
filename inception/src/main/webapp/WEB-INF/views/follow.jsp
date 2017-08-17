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



<!--   <script src="follow.js" ></script> -->
<script type="text/javascript">
	$(document).ready(function() {
		$('.followbtn').click(function() {
			var follow = $(this).attr("id");
			$.ajax({
				url : "/follow/followcheck",
				type : "POST",
				dataType : "text",
				data : {
					follow : $(this).attr("id")
				},
				success : function(fck) {
					$(document).find("button[id=" + follow + "]").html(fck);
				}
			});
		});
	});
</script>
</head>

<body>

	<jsp:include page="header.jsp" flush="false" />

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


	<table class="table table-striped table-hover">
		<tr class="active">
			<td><a href="/profile/${profile.userid}">board</a></td>
			<td><a href="/profile/${profile.userid}/reply">reply</a></td>
			<td><a href="/profile/${profile.userid}/scrap">scrap</a></td>
		</tr>
	</table>

	<table class="table table-striped table-hover">
		<c:forEach var="vo" items="${followList}">
			<!-- <tr></tr> => row1  Table Row -->
			<tr class="active">
				<!-- <td></td> => DATA Table DATA -->
				<th><a href="/profile/${vo.follow}">${vo.follow}</a></th>
				<th>
					<button id="${vo.follow}" class="followbtn">${vo.loginid}</button>
				</th>
			</tr>
		</c:forEach>
	</table>
</body>

</html>