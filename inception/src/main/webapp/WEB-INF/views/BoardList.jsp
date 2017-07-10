<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품</title>
</head>
<body>

    <table class="w3-table" id="search_result_table">
		<!-- 컬럼의 이름 (데이터베이스의 컬럼명이 아닌 제목)-->
		<tbody>

		<c:forEach var="vo" items="${boardList}">
		<!-- <tr></tr> => row1  Table Row -->
			<tr align="center">
			<!-- <td></td> => DATA Table DATA -->
				<td>${ vo.title }</td>
				<td>${ vo.contents }</td>
				<td>${ vo.userid }</td>
				<td>${ vo.writedate }</td>
				<td>${ vo.category }</td>
				<td>${ vo.hitcnt }</td>
				<td>${ vo.gcnt }</td>
				<td>${ vo.bcnt }</td>
				<td>${ vo.scrapecnt }</td>
				<td>${ vo.rpcnt }</td>				
			</tr>
		
		</c:forEach>
		</tbody>
	</table>

</body>
</html>