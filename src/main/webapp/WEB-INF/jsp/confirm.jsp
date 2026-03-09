<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="/contact-form/css/style.css">
	    <title>確認画面</title>
	</head>
	<body>
	    <h1>入力内容確認</h1>
	
	    <form action="/contact-form/contact/thanks" method="post">
	    
			<div class="info">
		        <p><span>名前：</span>${contact.name}</p>
		        <input type="hidden" name="name" value="${contact.name}">
		
		        <p><span>メールアドレス：</span>${contact.emailAddress}</p>
		        <input type="hidden" name="email_address" value="${contact.emailAddress}">
		
		        <p><span>性別：</span>${contact.sex}</p>
		        <input type="hidden" name="sex" value="${contact.sex}">
		
		        <p class="syubetu">
			        <span>お問い合わせ種別：</span>
			        <p>${contact.catesHtml }</p>
			       	<input type="hidden" name="catesHtml" value="${contact.catesHtml}">
		        </p>
		
		        <p><span>住まいのエリア：</span>${contact.pref}</p>
		        <input type="hidden" name="pref" value="${contact.pref}">
		
		        <p><span>お問い合わせ内容：</span></p>
		        <%--複数行書けるcss --%>
		        <p class="message">${contact.message}</p>
		        <input type="hidden" name="msg" value="${contact.message}">
		
		        <button type="submit"><span>送信</span></button>
		    </div>
		    
	    </form>
	</body>
</html>