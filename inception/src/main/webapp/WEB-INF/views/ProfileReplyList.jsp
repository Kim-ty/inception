<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
//     var userid = "${profile.userid}";         // <== 요렇게
</script>
</head>

<body>
	
		
	<table border="1">
		<tr>
			<td>
			${profile.userid}
			</td>
			<td>
			${profile.followCount}
			</td>
			<td>
			${profile.followerCount}
			</td>
		</tr>
		<tr>
		<td>
		<a id="board" href ="/profile/${profile.userid}/${page}">board</a>
		</td>
		<td>
		<a id="reply" href ="/profile/${profile.userid}/${page}">reply</a>
		</td>
		<td>
		<a id="scrape" href ="/profile/${profile.userid}/${page}">scrape</a>
		</td>
		</tr>
	</table>
	<table>
			<c:forEach var="vo" items="${profileReply}">
				<!-- <tr></tr> => row1  Table Row -->
				<tr class="active">
					<!-- <td></td> => DATA Table DATA -->
					<th>${vo.boardTitle}</th>
					<th>${ vo.contents}</th>
					<th>${ vo.writedate}</th>
				</tr>

			</c:forEach>	
	</table>
</body>
</html>