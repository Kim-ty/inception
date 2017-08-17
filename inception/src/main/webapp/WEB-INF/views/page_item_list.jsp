<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->


<title>상품</title>
</head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>


<body class="w3-content" style="max-width:1200px">
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>item</b></h3>
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">choice item</p>
    <p class="w3-right">
      <i class="fa fa-shopping-cart w3-margin-right" href = "/shop/unembodiment"></i>
      <i class="fa fa-search" href = "/shop/unembodiment"></i>
    </p>
  </header>


  <!-- Product grid -->
   <div class="w3-container w3-write w3-padding-16">
    <table class="w3-table" id="search_result_table">
		<!-- 컬럼의 이름 (데이터베이스의 컬럼명이 아닌 제목)-->
		<thead>
			<th>item name</th>
			<th>image</th>
			<th>price</th>
			<th>stock</th>
			<th>BUY?</th>
		</thead>
		<tbody>
		<c:forEach var="vo" items="${itemList}">
		<!-- <tr></tr> => row1  Table Row -->
			<tr align="center">
			<!-- <td></td> => DATA Table DATA -->
				<td>${ vo.item_name }</td>
				<td><img src="/resources/image/sdcard.jpg" alt="No image"  width="100"></td>
				<td>${ vo.item_price }</td>
				<td>${ vo.item_qty }</td>
                <td><a href="/teamfour/getinfo/${vo.item_code}">BUY NOW</a></td>
			</tr>
		
		</c:forEach>
		</tbody>
	</table>

  <!-- Subscribe section -->
  <div class="w3-container w3-write w3-padding-32">
    <p>connection admin</p>
    <p><input class="w3-input w3-border" type="text" placeholder="id"></p>
    <p><input class="w3-input w3-border" type="password" placeholder="password"></p>
    <button type="button" class="w3-button w3-red w3-margin-bottom">Connection</button>
  </div>

</div>

</body>
</html>