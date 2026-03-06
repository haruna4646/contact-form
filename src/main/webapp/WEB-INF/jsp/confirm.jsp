<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>確認画面</title>
	</head>
	<body>
	    <h1>入力内容確認</h1>
	
	    <form action="/contact-form/contact/thanks" method="post">
	
	        <p>名前：${contact.name}</p>
	        <input type="hidden" name="name" value="${contact.name}">
	
	        <p>メールアドレス：${contact.emailAddress}</p>
	        <input type="hidden" name="email_address" value="${contact.emailAddress}">
	
	        <p>性別：${contact.sex}</p>
	        <input type="hidden" name="sex" value="${contact.sex}">
	
	        <p>お問い合わせ種別：</p>
	        <%--サーブレットでループ処理した値${catesHTML}--%>
	        <c:out value="${catesHtml}" escapeXml="false" />
	
	        <p>住まいのエリア：${contact.pref}</p>
	        <input type="hidden" name="pref" value="${contact.pref}">
	
	        <p>お問い合わせ内容：</p>
	        <%--複数行書けるcss --%>
	        <p style="white-space: pre-wrap;">${contact.message}</p>
	        <input type="hidden" name="msg" value="${contact.message}">
	
	        <button type="submit">送信</button>
	    </form>
	</body>
</html>