<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="member.dao.*" %>  
  
    
<%
// 0. 한글처리
	request.setCharacterEncoding("UTF-8");
	// post 방식으로 전송시 한글 깨지지 않게 설정


// 1. 이전 폼의 입력값 얻어오기
	String realname = request.getParameter("realname");
		// form_check 에서 인풋값 얻어오기
	String nickname = request.getParameter("nickname");
	String myemail = request.getParameter("myemail");
	int myage = Integer.parseInt(request.getParameter("myage"));
		// getParameter는 텍스트 형식으로만 값을 받아옴, 인풋 태그의 타입이 넘버형이어도
		//	파라미터로 받아올때는 텍스트 형식으로 넘어와서 , 형변환 필수.
		
// 2. VO 객체에 저장하기
	MemberVO vo = new MemberVO();
		// 객체 생성하여 변수에 인풋값 넘기기
	vo.setRealname(realname);
	vo.setNickname(nickname);
	vo.setMyemail(myemail);
	vo.setMyage(myage);

// 3. DB에 입력하기
	MemberDAO dao = MemberDAO.getInstance();
		// MemberDAO 에서 private로 접근 제한자를 두어 객체 생성 불가
		// getInstance() 함수를 통해 객체를 반환시켜 인스턴스를 갖게함.
	dao.insert(vo);
 
// 4. 출력은 알아서
 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> something.jsp </title>
</head>
<body>
	<h1>정보</h1>
	본명 	: <%= vo.getRealname() %><br/>
	별명 	: <%= vo.getNickname() %><br/>
	이메일 	: <%= vo.getMyemail() %><br/>
	나이 	: <%= vo.getMyage() %><br/>	
	

</body>
</html>