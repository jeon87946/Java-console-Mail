<%@page import="kr.ac.kopo.mail.dao.MailDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.mail.vo.MailVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	// 1
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String dear = request.getParameter("dear");
	String msg = request.getParameter("msg");
	
	MailVO mail = new MailVO();
	 mail.setTitle(title);
	 mail.setWriter(writer);
	 mail.setDear(dear);
	 mail.setMsg(msg);
	 
	 System.out.println(mail);
	 
	 //2
	 MailDAO mailDao = new MailDAO();
	 mailDao.insert(mail);
%>

	<script>
		alert('메일 전송.')
		location.href = "/MAIL/mail/box/list.jsp"
	</script>	 
