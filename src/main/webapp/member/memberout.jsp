<%@page import="java.sql.ResultSet"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	let isNull = function(obj, msg) {
		if(obj.value == '') {
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}
	
	let checkForm = function() {
		
		let f = document.inputForm
		
		if(isNull(f.id, '아이디를 입력해주세요')) {
			return false
		}
		return true
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="../mail/include/topMenu.jsp"/>
	</header>
	<section>
		<div align="center">
			<hr>
			<h2>회원탈퇴</h2>
			<hr>
			<form name="inputForm" action="outprocess.jsp" method="post" onsubmit="return checkForm()">
				<table style="width: 80%" border="1">
				<tr>
						<th width="50%">아이디</th>
						<td><input type="text" name="id" size="50"></td>
					</tr>
				</table>
				<br>
				<button type="submit">완료</button>
			</form>
		</div>	
	</section>
	<footer>
		<%@ include file="../mail/include/footer.jsp"%>
	</footer>
</body>
</html>