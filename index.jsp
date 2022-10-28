<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! String msg; %>	

<%  
	msg = "안녕하세요~~";
%>    


<!-- HTML 주석 -->
<%-- JSP 주석 : JAVA로 변환 될때 빠짐 => 클래스로 변환되면서 JSP 는 생략됨.ㅣ--%>
<% // JAVA 주석 %>
<!-- 주석 생략 순서 : JSP -> JAVA -> HTML -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
메세지 : <%= msg %>
</body>
</html>