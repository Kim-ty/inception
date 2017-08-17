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
<body>
	<table class="table table-striped table-hover" border="1">
		<tr class="active">
			<td><a href="/profile/${profile.userid}">${profile.userid}</a></td>
			<td><a href="/profile/${profile.userid}/followlist">${profile.followCount}</a></td>
			<td><a href="/profile/${profile.userid}/followerlist">${profile.followerCount}</a></td>
		</tr>
	</table>

	<table class="table table-striped table-hover">
		<tr class="active">
			<td><a href="/profile/${profile.userid}">board</a></td>
			<td><a href="/profile/${profile.userid}/reply">reply</a></td>
			<td><a href="/profile/${profile.userid}/scrap">scrap</a></td>
		</tr>
	</table>

	<table class="table table-striped table-hover">
		<c:forEach var="vo" items="${profileScrape}">
			<!-- <tr></tr> => row1  Table Row -->
			<tr class="active">
				<!-- <td></td> => DATA Table DATA -->
				<th>${vo.bidx}</th>
				<th>${vo.title}</th>
				<th>${vo.contents}</th>
				<th><a href="/profile/${vo.userid}">${ vo.userid }</a></th>
				<th>${vo.writedate}</th>
				<th>${vo.category}</th>
				<th>${vo.hitcnt}</th>
				<th>${vo.gcnt}</th>
				<th>${vo.bcnt}</th>
				<th>${vo.scrapecnt}</th>
				<th>${vo.rpcnt}</th>
				<th>${vo.scrapedate}</th>
			</tr>
		</c:forEach>
	</table>

</body>

</html>
