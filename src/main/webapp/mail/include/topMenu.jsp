<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>    
<table border = "1" style = "width:100%">
	<tr>
		<td rowspan="2">
			<a href = "/MAIL/mail/login/maLogin.jsp">
			<div style="height:25px; width:100px; text-align: center"></div>
			<img src ="/MAIL/mail/include/dog.jpg" style= "width:100px; heigh:100px;">
			</a>
		</td>
		<td align = "right">
			<c:if test ="${not empty userVO}">
				[${ userVO.name}(${userVO.id})님으로 로그인 중... }
			</c:if>
			<c:if test = "${empty userVO}">
				GUEST...
			</c:if>	
		</td>	
	</tr>
	<tr>
		<td>
			<c:choose>
				<c:when test="${ empty userVO  }">
					<a href="/MAIL/member/login/maLogin.jsp">로그인</a> |
					<a href="/MAIL/member/memberForm.jsp">회원가입</a> | 
				</c:when>
							
				<c:otherwise>
					<a href="/MAIL/member/updateForm.jsp">회원정보수정</a> | 
					<a href="/MAIL/member/memberout.jsp">회원탈퇴 |</a> 
					<a href="/MAIL/member/login/logout.jsp">로그아웃</a>
				</c:otherwise>
			</c:choose>
				<a href="/MAIL/mail/box/list.jsp">받은메일함</a> | 
				<a href="/MAIL/mail/box/sent.jsp">보낸메일함</a> |
		</td>
	</tr>
</table>