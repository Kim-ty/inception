<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
이미지 분석 결과값</br>
${Rank1}</br>
${Rank2}</br>
${Rank3}</br>
${Rank4}</br>
${Rank5}</br>
<img src ='/resources/image/1499219046128_1111.jpg'>
<img src ='/resources/image/${img_src}'>

</body>
</html>