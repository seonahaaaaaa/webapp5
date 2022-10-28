<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 1) 이전 화면에서 사용자 입력값들을 얻어오기
//		- request.getParameter("") : 하나의 정보를 얻어올때
//		- request.getParameterValues('')

String name = request.getParameter("name");
String gender = request.getParameter("gender");
String occupation = request.getParameter("occupation");
String[] hobbys = request.getParameterValues("hobby");
/*
if(hobby != null ){	==> hobby 값이 입력이 안되면 에러 발생하는 상황을 방지하는 조건문
String hobbyTxt = " ";
	for(int i=0; i<hobbys.length; i++){
		hobbyTxt += hobbys[i]
	}
}	
*/

/*
************* 숏서킷 활용
String hobbyTxt = " ";
	for(int i=0; hobbys !=null && i<hobbys.length; i++){
		hobbyTxt += hobbys[i]
	}
	

*/

/* JSP에서 출력하는 방법
   out.println : 자동 줄바꿈 가능
   out.print : 출력만 (자동 줄바꿈 X)	
 */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_check.jsp</title>
</head>
<body>
	<!--  2) 얻어온 입력값들을 화면에 출력하기 -->
	<h2>입력값</h2>
	성함 :
	<%=name%><br /> 성별 :
	<%=gender%><br /> 직업 :
	<%=occupation%><br /> 취미 :
	<%
	if(hobbys != null){
		for (String s : hobbys)
		out.println(s + ",");
	}
	%><br />
</body>
</html>