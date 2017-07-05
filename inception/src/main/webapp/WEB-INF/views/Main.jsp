<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<style>
div.container {
	width: 100%;
	border: 2px solid gray;
}

header, footer {
	padding: 1em;
	color: black;
	background-color: gray;
	clear: left;
	text-align: center;
}

nav {
	float: top;
	max-width: width;
	margin: 3em;
	padding: 1em;
	text-align: center;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul a {
	text-decoration: none;
}

article {
	margin-left: 170px;
	border-left: 1px solid gray;
	padding: 1em;
	overflow: hidden;
}
</style>
<title>Main</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
    <script type="text/javascript">
$('#image').on('change', function() {
        
        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        
        //배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
            resetFormElement($(this)); //폼 초기화
            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            file = $('#image').prop("files")[0];
            blobURL = window.URL.createObjectURL(file);
            $('#image_preview img').attr('src', blobURL);
            $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
            $(this).slideUp(); //파일 양식 감춤
        }
    });

    /**
    onclick event handler for the delete button.
    It removes the image, clears and unhides the file input field.
    */
    $('#image_preview a').bind('click', function() {
        resetFormElement($('#image')); //전달한 양식 초기화
        $('#image').slideDown(); //파일 양식 보여줌
        $(this).parent().slideUp(); //미리 보기 영역 감춤
        return false; //기본 이벤트 막음
    });
    </script>
</head>

<body>

	<div class="container">

		<header>


			<h1>Image Searching</h1>
			<p style="text-align: center;">
			<p style="text-align: left;">
				<a href="/"><img
					src="http://kinimage.naver.net/20170630_163/1498780202972xwE1E_GIF/3477def4c30cd39d708e90448a3db9a5.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /> <img
					src="http://kinimage.naver.net/20170412_168/1491991851891x1pH6_GIF/1491991849429.gif?type=w620"
					alt="logo" style="width: 200px; height: 200px;" /></a>
			</p>

			<p style="text-align: right;">
				<c:choose>
					<c:when test="${not empty sessionScope.loginInfo}">
					${sessionScope.loginInfo.userid}님 개반갑
						<a href="#"><input type="submit" name="Profile"
							value="Profile"></a>
          
          <a href="/user/logout"><input type="submit" name="Log out"
							value="Log out"></a>

					</c:when>
					<c:otherwise>
						<a href="/user/login"><input type="submit" name="LOGIN"
							value="LOGIN"></a>

					</c:otherwise>
				</c:choose>


			</p>


			</p>

			</p>

		</header>

		<nav>

			<div>
				<c:forEach var="vo" items="${categoryList }">
					<a href="/${vo.category }"><input type="submit"
						name="category1" value=${vo.category }></a>

				</c:forEach>
			</div>

		</nav>

		<article>
			<h1>검색이미지를 던지든 키워드를 입력하든</h1>


			<form>
				Searching : <input type="text" name="">
				<button type="submit" name="">search</button>
			</form>
			<form action="inception" method="post" enctype="multipart/form-data" runat="server">
				이미지분석<input type = "file"  id="imgInp" name="uploadfile" required="required">
				<img id="blah" src="#" alt="your image" />
				<input type="submit" value="Search">
			</form>
			 <form>
    <p>
        <label for="image">Image:</label>
        <br />
        <input type="file" name="image" id="image" />
    </p>
    </form>
    <div id="image_preview">
        <img src="#" />
        <br />
    </div>

		</article>

		<footer>Footer</footer>

	</div>

</body>

</html>
