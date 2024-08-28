<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
</script>
</head>
<body>
	<header>
		<jsp:include page="../mail/include/topMenu.jsp"/>
	</header>
		<div align="center">
			<hr>
			<h2>마이페이지수정</h2>
			<hr>
			<form name="inputForm" action="../member/update.jsp" method="post" onsubmit="return checkForm()">
				<table>
					<tr>
						<th width="25%">비밀번호</th>
						<td><input type="text" name="pwd" size="20"></td>
					</tr>	
					<tr>
						<th width="25%">전화번호</th>
						<td><input type="text" name="callno" size="40"></td>
					</tr>	
				</table>
				<br>
				<button type="submit">확인</button>		
				</form>
			</div>
	<footer>
		<%@ include file="../mail/include/footer.jsp"%>
	</footer>		
</body>
</html>