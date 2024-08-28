<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.mail.dao.MailDAO"%>
<%@page import="kr.ac.kopo.mail.vo.MailVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/* //1
	리턴타입이 object이므로 형변환(MemberVO)을 해줘야 한다. 세션에 저장된 값을 가져온다.(maLogin) */ 
	MemberVO loginVO = (MemberVO) session.getAttribute("userVO");
	MailVO mail = new MailVO();
	MailDAO mailDao = new MailDAO();
	List<MailVO> mailList = mailDao.Inbox(loginVO);
	
	pageContext.setAttribute("mailList", mailList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- <link rel="stylesheet" href="/MAIL/resources/css/layout.css">
<link rel="stylesheet" href="/MAIL/resources/css/table.css"> -->

<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('#addBtn').click(function() {
			location.href = '/MAIL/mail/write/writeForm.jsp' 
		})
	})
</script>
</head>
<body>
	<header>
		<jsp:include page="/mail/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
			<hr width="80%">
			<h2>받은편지함</h2>
			<hr width="80%">
			<br>
			<table border="1" style="width: 80%;">
				<tr>
					<th width="20%">작성자</th>
					<th width="20%">제목</th>
					<th width="60%">내용</th>
				</tr>

				<c:forEach items="${ mailList }" var="mail">
					<tr>
						<td>${ mail.writer }</td>
						<td>${ mail.title }</td>
						<td>${ mail.msg }</td>s
					</tr>
				</c:forEach>
			</table>
			<button id="addBtn">새글등록</button>

		</div>
	</section>
	<footer>
		<%@ include file="/mail/include/footer.jsp"%>
	</footer>
</body>
</html>
