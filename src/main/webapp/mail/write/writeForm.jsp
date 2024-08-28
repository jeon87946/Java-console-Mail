<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	let isNull = function(obj, msg) {
		if (obj.value == '') {
			alert(msg)
			obj.focus()
			return true
		}
		return false
	}

	let checkForm = function() {

		let f = document.inputForm

		if (f.title.value == '') {
			alert('제목을 입력해주세요')
			f.title.focus()
			return false
		}
		if (f.msg.value == '') {
			alert('내용을 입력해주세요')
			f.msg.focus()
			return false
		}
	}
</script>
</head>
<body>
	<div align="center">
		<hr>
		<h2>새메일쓰기</h2>
		<hr>
		<form name="inputForm" action="/MAIL/mail/write/write.jsp"
			method="post" onsubmit="return checkForm()">
			<input type="hidden" name="writer" value="${ userVO.id}">
			<table style="width: 100%" border="1">
				<tr>
					<th width="25%">제목</th>
					<td><input type="text" name="title" size="100"></td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td><input type="text" name="writer" size="100"
						value="${ userVO.id }" readonly></td>
				</tr>
				<tr>
					<th width="25%">받는이</th>
					<td><input type="text" name="dear" size="100"></td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td><textarea rows="7" cols="80" name="msg"></textarea></td>
				</tr>
			</table>
			<br>
			<button type="submit">전송</button>
		</form>
	</div>
</body>
</html>