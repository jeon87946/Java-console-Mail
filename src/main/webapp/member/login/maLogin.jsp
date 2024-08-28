<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/mail/css/layout.css">
<link rel="stylesheet" href="/mail/css/table.css">
<script src="/mail/css/myJS.js"> </script>
<script>
	let checkForm = function() {
		
		let f = document.loginForm
		
		if(f.id.value == ''){ 
			alert('아이디를 입력해주세요')
			f.id.focus()
			return false
		}
		if(f.password.value == ''){ 
			alert('비밀번호를 입력해주세요')
			f.password.focus()
			return false
		}
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/mail/include/topMenu.jsp"/>
	</header>
	<section>
		<div align = "center">
		<br>
		<hr>
		<h2>로그인</h2>
		<br>
		<hr>
		<form action="loginprocess.jsp" method="post" name="loginForm"
		onsubmit="return  checkForm()">
			<table style="width:40%">
				<tr>
					<th>ID</th>
					<td>
						<input type="text" name="id">
						<!-- <input type="checkbox" id="saveId"> 아이디 저장 -->
					</td>
				</tr>
				<tr>
					<th>PASSWORD</th>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
			</table>
			<button>로그인</button>
		</form>
		</div>
	</section>
	<footer>
		<%@ include file="/mail/include/footer.jsp"%>
	</footer>
</body>
</html>