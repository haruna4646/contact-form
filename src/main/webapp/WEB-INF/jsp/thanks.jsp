<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/contact-form/css/style.css">
		<title>送信完了</title>
	</head>
	
	<body>
		
		<h1>送信完了</h1>
		
		<p class="thanks-msg">お問い合わせありがとうございました。</p>
		
		<div class="container">
			
			<div class="info">
				
				<h2>送信内容</h2>
				
				<p><span>名前：</span>${contact.name}</p>
				
				<p><span>メールアドレス：</span>${contact.emailAddress}</p>
				
				<p><span>性別：</span>${contact.sex}</p>
				
				<p><span>住まいエリア：</span>${contact.pref}</p>
				
				<p><span>お問い合わせ種別：</span></p>
				<p class="syubetu">${catesHtml}</p>
				
				<p><span>お問い合わせ内容：</span></p>
				<p class="message">${contact.message}</p>
			
			</div>
		
			<a class="back-btn" href="/contact-form/contact/input">入力画面に戻る</a>
		
		</div>
	
	</body>
</html>