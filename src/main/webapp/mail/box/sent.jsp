<%@page import="kr.ac.kopo.mail.dao.MailDAO"%>
<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.mail.vo.MailVO"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO loginVO = (MemberVO) session.getAttribute("userVO");
	System.out.println(loginVO.getId());
	MailVO mail = new MailVO();
	MailDAO mailDao = new MailDAO();
	List<MailVO> mailList = mailDao.Outbox(loginVO);

	//공유영역에 저장한다.(자바 코드와 html코드에 같이 쓸 수 있다)
	pageContext.setAttribute("mailList", mailList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/Mail/resources/css/layout.css">
<link rel="stylesheet" href="/Mail/resources/css/table.css">

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
			<h2>보낸편지함</h2>
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
						<td>${ mail.writer }</td> <!--$표시 == 공유영역에서 받아온 값을 넣을 수 있다.  -->
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
