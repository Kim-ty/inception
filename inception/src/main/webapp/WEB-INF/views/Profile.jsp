<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<<<<<<< HEAD
=======
<script type="text/javascript">
	var userid = "${profile.userid}"; // <== 요렇게
</script>

>>>>>>> 3fae4c0ed50e052ebfa0dac327e219b0b69ac64c
<title>profile</title>
</head>

<body>

	<table border="1">
		<tr>
			<td>${profile.userid}</td>
			<td>${profile.followCount}</td>
			<td>${profile.followerCount}</td>
<<<<<<< HEAD
		</tr>
<script type="text/javascript">
 	
 	var page;
 	
  	function gopage(param){
  		if(param == board){
  			page = board;
  		}else if(param == reply){
  			page = reply;
  		}else if(param == scrape){
  			page = scrape;
  		}
  	}
</script>
	</table>
	<jsp:include page="/profile/${profile.userid}/${page}" />
=======
			<input type="hidden" value="${profile}" name="profile">
		</tr>
		<tr>
			<td><a href="/profile/${profile.userid}/board">board</a></td>
			<td><a href="/profile/${profile.userid}/reply">reply</a></td>
			<td><a href="/profile/${profile.userid}/scrape">scrpae</a></td>
		</tr>
	</table>
	<%-- 	<jsp:include page="/profile/${userid}/board"/> --%>
>>>>>>> 3fae4c0ed50e052ebfa0dac327e219b0b69ac64c
</body>
</html>