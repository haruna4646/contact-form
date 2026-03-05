<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	
	<body>
		<h1>お問い合わせフォーム</h1>
		
		<form action="/contact/confirm" method="post">
		
			<p>
			名前<br>
			<input type="text" name="name">
			</p>
			
			<p>
			メールアドレス<br>
			<input type="text" name="email">
			</p>
			
			<p>
			お問い合わせ内容<br>
			<textarea name="message"></textarea>
			</p>
			
			<p>
			<button type="submit">確認画面へ</button>
			</p>
		
		</form>
	</body>

</html>