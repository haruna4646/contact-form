<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>送信完了</title>
</head>

<body>

<h1>送信完了</h1>

<p>お問い合わせありがとうございました。</p>

<h2>送信内容</h2>

<p>名前：${contact.name}</p>

<p>メールアドレス：${contact.emailAddress}</p>

<p>性別：${contact.sex}</p>

<p>住まいエリア：${contact.pref}</p>

<p>お問い合わせ内容：</p>
<p>${contact.message}</p>

<p>お問い合わせ種別：</p>
<p>
<%	String[] cates = (String[])request.getAttribute("cates");
	if(cates != null){
	    for(String c : cates){
	        out.print(c + " ");
	    }
	}
%>
</p>

<br>

<a href="/contact-form/contact/input">入力画面に戻る</a>

</body>
</html>