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
	$(document).ready(
			function() {

				$("#btnbidx").click(
						function() {
							var userinfo = $("#insert_form").serialize();
							$.ajax({
								type : "GET",
								url : "/user/emailchk",
								data : userinfo,
								success : function(emailchk) {
									if (1 == emailchk) {
										$("#content4").text("중복된 이메일입니다").css(
												"color", "red");
										emailFlag2 = false;
										joinChecker();
									} else if (-1 == emailchk) {
										$("#content4").text("이메일이 너무짧습니다").css(
												"color", "black");
										emailFlag2 = false;
										joinChecker();
									} else {
										$("#content4").text("사용가능한 이메일 입니다")
												.css("color", "blue");
										emailFlag2 = true;
										joinChecker();
									}

								}
							});
						});
			});
	$(function() {
		$("#popbutton").click(function() {
			$('div.modal').modal({
				remote : 'layer.html'
			});
		})
	})
</script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<!-- <link -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N" -->
<!-- 	crossorigin="anonymous"> -->


<style>
/* The Modal (background) */
.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 1;
	/* Sit on top */
	padding-top: 100px;
	/* Location of the box */
	left: 0;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	/* Fallback color */
	background-color: rgba(0, 0, 0, 0.4);
	/* Black w/ opacity */
}
/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	margin: auto;
	padding: 0;
	border: 1px solid #888;
	width: 80%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.3s;
	animation-name: animatetop;
	animation-duration: 0.3s
}
/* Add Animation */
@
-webkit-keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 2px 16px;
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}
</style>



</head>

<body>

	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>sumnale</th>
				<th>title</th>
				<th>contents</th>
				<th>userid</th>
				<th>writedate</th>
				<th>category</th>
				<th>hitcount</th>
				<th>good</th>
				<th>bad</th>
				<th>scrape</th>
				<th>scrapecount</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${boardList}">
				<!-- <tr></tr> => row1  Table Row -->
				<tr class="active">
					<!-- <td></td> => DATA Table DATA -->
					<th>${vo.bidx}</th>
					<th>${ vo.title }</th>
					<th>
												<a data-toggle="modal" href="BoardList/${vo.bidx}" data-target="#modal-testNew" 
												role="button" data-backdrop="static" 						>
						 							<span id = "btnbidx" class="btn btn-xs btn-success">${vo.contents}</span>
												</a> 					
<!-- 												Trigger/Open The Modal onClick with Content  -->
<!-- 						<span id="myBtn" onclick="" style="cursor: pointer"> -->
<%-- 							${vo.contents }</span> --%>
					</th>
					<th>${ vo.userid }</th>
					<th>${ vo.writedate }</th>
					<th>${ vo.category }</th>
					<th>${ vo.hitcnt }</th>
					<th>${ vo.gcnt }</th>
					<th>${ vo.bcnt }</th>
					<th>${ vo.scrapecnt }</th>
					<th>${ vo.rpcnt }</th>
				</tr>

			</c:forEach>
		</tbody>
	</table>

	<div id="modal-testNew" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="테스트정보 등록" aria-describedby="테스트 모달">
		<div class="modal-dialog modal-lg">
			<div class="modal-content"></div>
		</div>
	</div>


	<!-- 	<div id="myModal" class="modal"> -->

	<!-- 		<!-- Modal content -->
	-->
	<!-- 		<div class="modal-content"> -->
	<!-- 			<div class="modal-header"> -->
	<!-- 				<span class="close">&times;</span> -->
	<!-- 				<h2>Board detail Modal</h2> -->
	<!-- 			</div> -->
	<%-- 			<div class="modal-body" target="/board/BoardList/${bidx}"> --%>

	<%-- 				<a href="board/BoardList/${bidx}"></a> --%>
	<%-- <%-- 				<jsp:include page="BoardSimple.jsp"></jsp:include> --%>
	--%>


	<!-- 			</div> -->
	<!-- 			<div class="modal-footer"> -->
	<!-- 				<h3>Modal Footer</h3> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<script>
		// 		// Get the modal
		// 		var modal = document.getElementById('myModal');

		// 		// Get the button that opens the modal
		// 		var btn = document.getElementById("myBtn");

		// 		// Get the <span> element that closes the modal
		// 		var span = document.getElementsByClassName("close")[0];

		// 		// When the user clicks the button, open the modal
		// 		btn.onclick = function() {
		// 			modal.style.display = "block";
		// 		}

		// 		// When the user clicks on <span> (x), close the modal
		// 		span.onclick = function() {
		// 			modal.style.display = "none";
		// 		}

		// 		// When the user clicks anywhere outside of the modal, close it
		// 		window.onclick = function(event) {
		// 			if (event.target == modal) {
		// 				modal.style.display = "none";
		// 			}
		// 		}

		// 		function locationHref() {
		// 			location.href = "#";
		// 		}
	</script>



</body>

</html>
