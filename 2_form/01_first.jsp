<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> 로그인창 </title>
</head>
<body>

<h3>로그인 확인하기 </h3> 
<!-- method : "get" : form의 default 값, get으로 할 시 submit 후 url에 입력 정보 조회 됨. 
				반드시 "post" 타입으로 변경해줘야함.
	클라이언트가 보내준 값 : request			
				
-->
<form action="01_second.jsp" method="post">
사용자: <input name='User' type='text'><br/>
비밀번호: <input name='Pass' type='password'><br/>
<input type='submit' value='login'> 
</form>

</body>
</html>