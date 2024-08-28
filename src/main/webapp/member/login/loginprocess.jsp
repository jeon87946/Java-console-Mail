<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	
	MemberVO member = new MemberVO();
	member.setId(id);
	member.setPwd(pwd);
	
	MemberDAO memberDao = new MemberDAO();
	MemberVO userVO = memberDao.search(id, pwd);
	
	String url = "";
	String msg = "";
	if(userVO == null) {
		//실패
		url = "maLogin.jsp";
		msg = "아이디 또는 비밀번호를 잘못입력하셨습니다.";
	}else {
		//성공
		url="/MAIL/mail/box/list.jsp";
		msg = userVO.getName() + " 님 환영합니다.";
		
		//세션에 등록
		session.setAttribute("userVO", userVO);
	}
	
	pageContext.setAttribute("url", url);
	pageContext.setAttribute("msg", msg);
%>

<script>
	alert('${ msg }')
	location.href = '${url}'
</script>