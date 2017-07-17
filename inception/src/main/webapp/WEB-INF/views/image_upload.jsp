<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<html>
<head>
<title>Intro_insert</title>
</head>
<body>
<%


String save = application.getRealPath("/images");
int size = 5 * 1024 * 1024;
MultipartRequest multi = new MultipartRequest(request, save, size, "utf-8", new DefaultFileRenamePolicy());
//multipartRequest 객체를 생성하면서 웹서버에 파일저장
//DefaultFileRenamePolicy() 웹서버에 같은 이름 파일이 있으면 파일 이름 자동 변경

String id = new String(multi.getParameter("intro_id").getBytes("UTF-8"),"8859_1");
//utf-8형식의 파라미터값을 8859-1값으로 인코딩
//MySQL DB에 저장할때는 
//String myid = new String(multi.getParameter("intro_id").getBytes("8859-1"),"UTF-8");
%>

</body>

</html>
