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
			if(isNull(f.pwd, '비밀번호를 입력해주세요')) {
				return false
			}
			if(isNull(f.name, '이름을 입력해주세요')) {
				return false
			}
			if(isNull(f.callno, '전화번호를 입력해주세요')) {
				return false
			}
			return true
		}
</script>
</head>
<body>
	
		<div align="center">
			<hr>
			<h2>회원가입</h2>
			<hr>
			<form name="inputForm" action="berwrite.jsp" method="post" onsubmit="return checkForm()">
				<table style="width: 80%" border="1">
					<tr>
						<th width="50%">아이디</th>
						<td><input type="text" name="id" size="50"></td>
					</tr>	
					<tr>
						<th width="50%">비밀번호</th>
						<td><input type="password" name="password" size="50"></td>
					</tr>	
					<tr>
						<th width="50%">이름</th>
						<td><input type="text" name="name" size="50"></td>
					</tr>	
					<tr>
						<th width="50%">전화번호</th>
						<td><input type="text" name="callno" size="40"></td>
					</tr>
				</table>		
					<br>
					<button type="submit">등록</button>	
			</form>
		</div>		
	<footer>
		<%@ include file="../mail/include/footer.jsp"%>
	</footer>
</body>
</html>