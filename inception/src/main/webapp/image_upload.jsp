<%@ page import="kr.co.inception.main.controller.ManipulateImage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String imgEncodedStr = request.getParameter("image");
String fileName = request.getParameter("filename");
System.out.println("Filename: "+ fileName);
if(imgEncodedStr != null){
	ManipulateImage.convertStringtoImage(imgEncodedStr, fileName);
	System.out.println("Inside if");
	out.print("Image upload complete, Please check your directory");
} else{
	System.out.println("Inside else");
	out.print("Image is empty");	
}
%>
