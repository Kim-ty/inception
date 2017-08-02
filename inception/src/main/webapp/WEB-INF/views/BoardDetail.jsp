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
<script type="text/javascript">

	function ReplyView(){
		if($(document).find("#replymore").html()=="댓글보기"){
			reply.style.visibility="visible";
			$(document).find("#replymore").html("댓글숨기기");
		}else{
			$("#replycontents").empty();
			$(document).find("#replymore").html("댓글보기");
	 		$("reply").append("<tbody id=replycontents></tbody>");
		}
	}
	
	
	$(document).ready(function(){		
				
		function(votag){
			alert(votag);
			var tagArray=(votag).split(',');
			for(var i in tagArray){
				$("#tags").append("<th><a href='/board/boardList/tag"+tagArray[i]+"'>"+tagArray[i]+"</a></th>");
			}
		}
		
		
		
		$('#replymore').click(function(){
			$.ajax({
				url:"/board/replyList",
				type:"POST",
				dataType:"JSON",
				data : {bidx : $(document).find("#bidx").html()},
				success:function(replyVO){
						$.each(replyVO,function(key,value){
							var sibal
								if(value.level>1){
									  for (var i = 0; i <= value.level; i++) {
											sibal +="&nbsp;";
									  }
								}
							var row=$("<tr><td align='left'>"+
								sibal+
								" └"+value.contents+"</td>"+
								"<td>"+value.userid+"</td>"+
								"<td>"+value.writedate+"</td>"+
			 					"<td><a href='javascript:Replyinsert()'>답글달기</a></td></tr>");
			 		$("#replycontents").append(row);							
						});
					ReplyView();					
				}
			});
		});
		
		
	});
	
	
	
</script>
<title>boardDetail</title>
</head>
<body>


	<table class="active">
		<c:set var="vo" value="${boardSimple}" />
		<!-- <tr></tr> => row1  Table Row -->
		<tr>
			<!-- <td></td> => DATA Table DATA -->
			<th id="bidx">${vo.bidx}</th>
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
			<th id="gooder">${ vo.good }</th>
			<th>좋아요</th>
			<th id="bader">${ vo.bad }</th>
			<th>나빠요</th>
			<th id="scraper">${ vo.scrapecount }</th>
			<th>스크랩하기</th>
			<th>${ vo.replycount }</th>
			<th><a id="replymore">댓글보기</a></th>
		</tr>
		<tr id="tags" onload="javascript:taglink(${vo.tag});">
			<th>${vo.tag }</th>
		</tr>
		<tr>
		</tr>
	</table>

	<table id="reply" style="visibility: hidden;">
	 <tbody id=replycontents>
	 
	 </tbody>
	</table>
	
		
	<div id="myModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<jsp:include page="replyinsert.jsp" />
				</div>
			</div>
		</div>
	</div>
	
	<script>
	function Replyinsert(){
		modal.style.display = "block";
	}

	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

	</script>
	
</body>
</html>