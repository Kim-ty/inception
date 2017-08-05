<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">
<!--   <script src="follow.js" ></script> -->
<script type="text/javascript">
	$(document).ready(function() {
		$('.followbtn').click(function() {
			var follow = $(this).attr("id");
			$.ajax({
				url : "/follow/followcheck",
				type : "POST",
				dataType : "text",
				data : { follow : $(this).attr("id") },
				success : function(fck) {
					$(document).find("button[id="+follow+"]").html(fck);
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