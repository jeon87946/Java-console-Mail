<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	
	MemberVO member = new MemberVO();
	member.setId(id);
	
	//2
	MemberDAO boardDao = new MemberDAO();
	boardDao.memberout(id);
	
%>		
<script>
	alert($('탈퇴왼료'))
	location.href = "login/maLogin.jsp"
</script>