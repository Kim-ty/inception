<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<link
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N"
	crossorigin="anonymous">

<!-- <link -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-C0X5qw1DlkeV0RDunhmi4cUBUkPDTvUqzElcNWm1NI2T4k8tKMZ+wRPQOhZfSJ9N" -->
<!-- 	crossorigin="anonymous"> -->

</head>
<body>
	<div class="modal-header">
    	<button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">×</button>
    	<h3 class="smaller lighter blue no-margin modal-title">검수정보 등록</h3>
	</div>
 
	<div class="modal-body">
	<table class="table table-striped table-hover ">
		<thead>
			<tr>
				<th>까꿍</th>
				<th>title</th>
				<th>userid</th>
				<th>writedate</th>
				<th>contents</th>
				<th>hitcount</th>
				<th>category</th>
				<th>tag</th>
				<th>good</th>
				<th>bad</th>
				<th>scrapecount</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td>${boardSimpleVO.title}</td>
				<td>${boardSimpleVO.userid}</td>
				<td>${boardSimpleVO.writedate}</td>
				<td>${boardSimpleVO.contents}</td>
				<td>${boardSimpleVO.hitcount}</td>
				<td>${boardSimpleVO.category}</td>
				<td>${boardSimpleVO.tag}</td>
				<td>${boardSimpleVO.good}</td>
				<td>${boardSimpleVO.bad}</td>
				<td>${boardSimpleVO.scrapecount}</td>
			</tr>
		</tbody>
	</table>

	</div>
 
	<div class="modal-footer">
   	 <span class="btn btn-sm btn-warning" id="testDel">
       	 전체삭제<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
    	</span>
    	<span class="btn btn-sm btn-success" id="testSave">
       	 저장<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
    	</span>
    <button class="btn btn-sm btn-danger pull-right" data-dismiss="modal" id="btnClose">
        <i class="ace-icon fa fa-times"></i>닫기
    </button>
</div>

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
// 			location.href = "/${vo.bidx}";
// 		}
</script>


</body>
</html>
