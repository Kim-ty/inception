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
<title>boardDetail</title>
</head>
<body>

	<table class="active">
		<c:set var="vo" value="${boardSimple}" />
		<!-- <tr></tr> => row1  Table Row -->
		<tr>
			<!-- <td></td> => DATA Table DATA -->
			<th>${vo.bidx}</th>
		</tr>
		<tr>
			<th>${vo.title}</th>
		</tr>
		<tr>
			<th>${vo.contents}</th>
			<%-- 					<a data-toggle="modal" href="BoardList/${vo.bidx}" --%>
			<!-- 						data-target="#modal-testNew" role="button" data-backdrop="static"> -->
			<%-- 							<span id="btnbidx" class="btn btn-xs btn-success">${vo.contents}</span> --%>
			<!-- 					</a> 												Trigger/Open The Modal onClick with Content  -->
			<!-- 						<span id="myBtn" onclick="" style="cursor: pointer"> -->
			<%-- 							${vo.contents }</span> --%>
			</th>
		</tr>
		<tr>

			<th><a href="/profile/${vo.userid}">${ vo.userid }</a></th>
		</tr>
		<tr>
			<th>${ vo.writedate }</th>
		</tr>
		<tr>
			<th>${ vo.category }</th>
		</tr>
		<tr>
			<th>${ vo.hitcount }</th>
		</tr>
		<tr>
			<th>${ vo.good }</th>
		</tr>
		<tr>
			<th>${ vo.bad }</th>
		</tr>
		<tr>
			<th>${ vo.scrapecount }</th>
		</tr>
		<tr>
			<th>${ vo.replycount }</th>
		</tr>
		<tr>
		<td><a id="replymore">댓글보기</a></td>
		</tr>
		<tr>
	<include>
	
	</include>
	</tr>
	</table>

</body>
</html>