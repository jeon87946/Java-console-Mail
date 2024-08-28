<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	
	//1
	MemberVO member = (MemberVO) session.getAttribute("userVO");
	String pwd = request.getParameter("pwd");
	String callno = request.getParameter("callno");
	
	
	//확
	System.out.println(member);
	
	//2
	MemberDAO memberDAO = new MemberDAO();
%>      
<script>
	alert("변경완료")
	location.href = "/MAIL/mail/box/list.jsp"
</script>
